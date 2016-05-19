package com.sishuok.es.ship.service;

import com.google.common.collect.Maps;
import com.sishuok.es.common.entity.search.SearchOperator;
import com.sishuok.es.common.entity.search.Searchable;
import com.sishuok.es.common.repository.RepositoryHelper;
import com.sishuok.es.common.service.BaseService;
import com.sishuok.es.maintain.editor.web.controller.utils.CompressUtils;
import com.sishuok.es.maintain.notification.service.NotificationApi;
import com.sishuok.es.ship.entity.Ship;
import com.sishuok.es.ship.repository.ShipRepository;
import com.sishuok.es.showcase.excel.entity.ExcelData;
import com.sishuok.es.showcase.excel.repository.ExcelDataRepository;
import com.sishuok.es.student.entity.Student;
import com.sishuok.es.student.service.StudentService;
import com.sishuok.es.sys.user.entity.User;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: donglin.ni
 * Date: 2016/5/17
 * Time: 15:10
 * To change this template use File | Settings | File Templates.
 */
@Service
public class ShipService extends BaseService<Ship, Long> {
    private final Logger log = LoggerFactory.getLogger(ShipService.class);
    @Autowired
    private StudentService studentService;
    private int batchSize = 1000; //批处理大小
    private int pageSize = 1000;//查询时每页大小


    /**
     * 导出文件的最大大小 超过这个大小会压缩
     */
    private final int MAX_EXPORT_FILE_SIZE = 10 * 1024 * 1024; //10MB


    private ShipRepository getShipRepository() {
        return (ShipRepository) baseRepository;
    }

    @Autowired
    private NotificationApi notificationApi;

    private final String storePath = "upload/excel";
    private final String EXPORT_FILENAME_PREFIX = "excel";

    public void setNotificationApi(final NotificationApi notificationApi) {
        this.notificationApi = notificationApi;
    }


    /**
     * 支持大数据量导出
     * excel 2007 每个sheet最多1048576行
     * @param user
     * @param contextRootPath
     * @param searchable
     */
    @Async
    public void exportExcel2007(final User user, final String contextRootPath, final Searchable searchable) {

        int rowAccessWindowSize = 1000; //内存中保留的行数，超出后会写到磁盘
        int perSheetRows = 100000; //每个sheet 10w条
        int totalRows = 0; //统计总行数
        Long maxId = 0L;//当前查询的数据中最大的id 优化分页的

        String fileName = generateFilename(user, contextRootPath, "xlsx");
        File file = new File(fileName);
        BufferedOutputStream out = null;
        SXSSFWorkbook wb = null;
        try {
            long beginTime = System.currentTimeMillis();

            wb = new SXSSFWorkbook(rowAccessWindowSize);
            wb.setCompressTempFiles(true);//生成的临时文件将进行gzip压缩

            while (true) {

                Sheet sheet = wb.createSheet();
                Row headerRow = sheet.createRow(0);
                Cell Cell00 = headerRow.createCell(0);
                Cell00.setCellValue("学号");
                Cell Cell11 = headerRow.createCell(1);
                Cell11.setCellValue("姓名");
                Cell Cell22 = headerRow.createCell(2);
                Cell22.setCellValue("班级");
                Cell Cell33 = headerRow.createCell(3);
                Cell33.setCellValue("申请日期");
                Cell Cell44 = headerRow.createCell(4);
                Cell44.setCellValue("申请理由");
                Cell Cell55 = headerRow.createCell(5);
                Cell55.setCellValue("奖金类型");
                Cell Cell66 = headerRow.createCell(6);
                Cell66.setCellValue("等级");
                Cell Cell77 = headerRow.createCell(7);
                Cell77.setCellValue("审核结果");
                Cell Cell88 = headerRow.createCell(8);
                Cell88.setCellValue("发放结果");

                totalRows = 1;

                Page<Ship> page = null;

                do {
                    searchable.setPage(0, pageSize);
                    //优化分页性能
                    if(!searchable.containsSearchKey("id_in")) {
                        searchable.addSearchFilter("id", SearchOperator.gt, maxId);
                    }
                    page = findAll(searchable);

                    for (Ship data : page.getContent()) {
                        Row row = sheet.createRow(totalRows);
                        Cell Cell0 = row.createCell(0);
                        Cell0.setCellValue(data.getSno());
                        Student st=studentService.findBySno(data.getSno());
                        Cell Cell1 = row.createCell(1);
                        Cell1.setCellValue(st==null?"":st.getName());
                        Cell Cell2 = row.createCell(2);
                        Cell2.setCellValue(st==null?"":st.getClassname());
                        Cell Cell3 = row.createCell(3);
                        Cell3.setCellValue(data.getDate());
                        Cell Cell4 = row.createCell(4);
                        Cell4.setCellValue(data.getRemark());
                        Cell Cell5 = row.createCell(5);
                        Cell5.setCellValue(getTypeDesc(data.getType()));
                        Cell Cell7 = row.createCell(6);
                        Integer level = data.getLevel();
                        Cell7.setCellValue(level==0?"一等":level==1?"二等":"三等");
                        Cell Cell6 = row.createCell(7);
                        Integer state = data.getState();
                        Cell6.setCellValue(state==0?"待审核":state==1?"通过":"驳回");
                        Cell Cell8 = row.createCell(8);
                        Integer grant = data.getGrant();
                        Cell8.setCellValue(grant==0?"待发放":"已发放");
                        maxId = Math.max(maxId, data.getId());
                        totalRows++;
                    }
                    //clear entity manager
                    RepositoryHelper.clear();
                } while (page.hasNextPage() && totalRows <= perSheetRows);

                if (!page.hasNextPage()) {
                    break;
                }
            }
            out = new BufferedOutputStream(new FileOutputStream(file));
            wb.write(out);

            IOUtils.closeQuietly(out);

            if (needCompress(file)) {
                fileName = compressAndDeleteOriginal(fileName);
            }

            long endTime = System.currentTimeMillis();

            Map<String, Object> context = Maps.newHashMap();
            context.put("seconds", (endTime - beginTime) / 1000);
            context.put("url", fileName.replace(contextRootPath, ""));
            notificationApi.notify(user.getId(), "excelExportSuccess", context);
        } catch (Exception e) {
            IOUtils.closeQuietly(out);
            log.error("excel export error", e);
            Map<String, Object> context = Maps.newHashMap();
            context.put("error", e.getMessage());
            notificationApi.notify(user.getId(), "excelExportError", context);
        } finally {
            // 清除本工作簿备份在磁盘上的临时文件
            wb.dispose();
        }
    }

    private String getTypeDesc(Integer type ){
        switch (type){
            case 1:
                return "校奖学金";
            case 2:
                return "国家奖学金";
            case 3:
                return "励志奖学金";
            case 4:
                return "助学金";
        }
        return "";
    }
    private String compressAndDeleteOriginal(final String filename) {
        String newFileName = FilenameUtils.removeExtension(filename) + ".zip";
        compressAndDeleteOriginal(newFileName, filename);
        return newFileName;
    }

    private void compressAndDeleteOriginal(final String newFileName, final String... needCompressFilenames) {
        CompressUtils.zip(newFileName, needCompressFilenames);
        for(String needCompressFilename : needCompressFilenames) {
            FileUtils.deleteQuietly(new File(needCompressFilename));
        }
    }

    private boolean needCompress(final File file) {
        return file.length() > MAX_EXPORT_FILE_SIZE;
    }
    /**
     * 生成要导出的文件名
     * @param user
     * @param contextRootPath
     * @param extension
     * @return
     */
    private String generateFilename(final User user, final String contextRootPath, final String extension) {
        return generateFilename(user, contextRootPath, null, extension);
    }
    private String generateFilename(final User user, final String contextRootPath, Integer index, final String extension) {
        String path = FilenameUtils.concat(contextRootPath, storePath);
        path = FilenameUtils.concat(path, user.getUsername());
        path = FilenameUtils.concat(
                path,
                EXPORT_FILENAME_PREFIX + "_" +
                        DateFormatUtils.format(new Date(), "yyyyMMddHHmmssSSS") +
                        (index != null ? ("_" + index) : "") +
                        "." + extension);

        File file = new File(path);
        if(!file.exists()) {
            File parentFile = file.getParentFile();
            if(!parentFile.exists()) {
                parentFile.mkdirs();
            }
            return path;
        }
        return generateFilename(user, contextRootPath, extension);
    }
}
