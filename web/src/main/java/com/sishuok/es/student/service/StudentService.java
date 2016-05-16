package com.sishuok.es.student.service;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.sishuok.es.common.service.BaseService;
import com.sishuok.es.maintain.notification.service.NotificationApi;
import com.sishuok.es.student.entity.Student;
import com.sishuok.es.student.repository.StudentRepository;
import com.sishuok.es.sys.user.entity.User;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.io.IOUtils;
import org.apache.poi.hssf.eventusermodel.HSSFEventFactory;
import org.apache.poi.hssf.eventusermodel.HSSFRequest;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.xssf.eventusermodel.XSSFReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.framework.AopContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

import java.io.BufferedInputStream;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: donglin.ni
 * Date: 2016/5/16
 * Time: 12:03
 * To change this template use File | Settings | File Templates.
 */
@Service
public class StudentService extends BaseService<Student, Long> {

    private final Logger log = LoggerFactory.getLogger(StudentService.class);

    private int batchSize = 1000; //批处理大小
    private int pageSize = 1000;//查询时每页大小


    /**
     * 导出文件的最大大小 超过这个大小会压缩
     */
    private final int MAX_EXPORT_FILE_SIZE = 10 * 1024 * 1024; //10MB

    @Autowired
    private NotificationApi notificationApi;

    private final String storePath = "upload/excel";
    private final String EXPORT_FILENAME_PREFIX = "excel";

    public void setNotificationApi(final NotificationApi notificationApi) {
        this.notificationApi = notificationApi;
    }

    /**
     * 如果主键冲突 覆盖，否则新增
     * @param dataList
     */
    public void doBatchSave(final List<Student> dataList) {
        for(Student data : dataList) {
            String sno = data.getSno();
            Student st=null;
            try{
                st = getStudentRepository().findBySno(sno);
            }catch (Exception e){
                e.printStackTrace();
            }
            if(st==null){
                save(data);
            }else{
                try {
                    BeanUtils.copyProperties(st,data);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                update(st);
            }
        }
    }

    /**
     * 导入 excel 2003 biff格式
     * 如果是xml格式的 可以使用SAX（未测试）
     * @param user
     * @param is
     */
    @Async
    public void importExcel2003(final User user, final InputStream is) {

        StudentService proxy = ((StudentService)AopContext.currentProxy());

        BufferedInputStream bis = null;
        InputStream dis = null;
        try {
            long beginTime = System.currentTimeMillis();

            List<Student> dataList = Lists.newArrayList();

            //输入流
            bis = new BufferedInputStream(is);
            // 创建 org.apache.poi.poifs.filesystem.Filesystem
            POIFSFileSystem poifs = new POIFSFileSystem(bis);
            // 从输入流 得到 Workbook(excel 部分)流
            dis = poifs.createDocumentInputStream("Workbook");
            // 构造 HSSFRequest
            HSSFRequest req = new HSSFRequest();

            // 添加监听器
            req.addListenerForAllRecords(new Excel2003ImportListener(proxy, dataList, batchSize));
            //  创建事件工厂
            HSSFEventFactory factory = new HSSFEventFactory();
            // 根据文档输入流处理事件
            factory.processEvents(req, dis);


            //把最后剩下的不足batchSize大小
            if (dataList.size() > 0) {
                proxy.doBatchSave(dataList);
            }

            long endTime = System.currentTimeMillis();

            Map<String, Object> context = Maps.newHashMap();
            context.put("seconds", (endTime - beginTime) / 1000);
            notificationApi.notify(user.getId(), "excelImportSuccess", context);
        } catch (Exception e) {
            log.error("excel import error", e);
            Map<String, Object> context = Maps.newHashMap();
            context.put("error", e.getMessage());
            notificationApi.notify(user.getId(), "excelImportError", context);
        } finally {
            // 关闭输入流
            IOUtils.closeQuietly(bis);
            // 关闭文档流
            IOUtils.closeQuietly(dis);
        }
    }

    private StudentRepository getStudentRepository() {
        return (StudentRepository) baseRepository;
    }


}
