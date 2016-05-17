package com.sishuok.es.student.web.controller;

import com.sishuok.es.common.Constants;
import com.sishuok.es.common.entity.enums.BooleanEnum;
import com.sishuok.es.common.web.controller.BaseCRUDController;
import com.sishuok.es.common.web.validate.ValidateResponse;
import com.sishuok.es.student.entity.Student;
import com.sishuok.es.student.service.StudentService;
import com.sishuok.es.sys.user.entity.User;
import com.sishuok.es.sys.user.web.bind.annotation.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created with IntelliJ IDEA.
 * User: donglin.ni
 * Date: 2016/5/16
 * Time: 11:38
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/student/sample")
public class StudentController  extends BaseCRUDController<Student, Long> {
    private StudentService getStudentService() {
        return (StudentService) baseService;
    }

    public StudentController() {
        setResourceIdentity("student:sample");
    }

    @Autowired
    private ServletContext servletContext;

    /**
     * 导出excel存储的目录
     */
    private String contextRootPath;


    @PostConstruct
    public void afterPropertiesSet() {
        contextRootPath = servletContext.getRealPath("/");
    }

    @Override
    protected void setCommonData(Model model) {
        model.addAttribute("booleanList", BooleanEnum.values());
    }



    @RequestMapping(value = "/import", method = RequestMethod.GET)
    public String showImportExcelForm( Model model) {
        return viewName("importForm");
    }

    @RequestMapping(value = "/import", method = RequestMethod.POST)
    public String importExcel(
            @CurrentUser User user,
            @RequestParam("file") MultipartFile file,
            Model model,
            RedirectAttributes redirectAttributes) throws IOException {

        if(!canImport(file, model)) {
            return showImportExcelForm(model);
        }

        InputStream is = file.getInputStream();

        getStudentService().importExcel2003(user,is);

        redirectAttributes.addFlashAttribute(Constants.MESSAGE, "导入任务已提交，任务执行完成后会在页面右上角的“我的通知”中通知你");
        return redirectToUrl(null);
    }

    private boolean canImport(final MultipartFile file, final Model model) {
        if(file == null || file.isEmpty()) {
            model.addAttribute(Constants.ERROR, "请选择要导入的文件");
            return false;
        }

        String filename = file.getOriginalFilename().toLowerCase();
        if(!filename.endsWith("xlsx")) {
            model.addAttribute(Constants.ERROR, "导入的文件格式错误，xls、xlsx");
            return false;
        }
        return true;
    }


    /**
     * 验证返回格式
     * 单个：[fieldId, 1|0, msg]
     * 多个：[[fieldId, 1|0, msg],[fieldId, 1|0, msg]]
     *
     * @param fieldId
     * @param fieldValue
     * @return
     */
    @RequestMapping(value = "validate", method = RequestMethod.GET)
    @ResponseBody
    public Object validate(
            @RequestParam("fieldId") String fieldId, @RequestParam("fieldValue") String fieldValue,
            @RequestParam(value = "id", required = false) Long id) {

        ValidateResponse response = ValidateResponse.newInstance();
        if ("sno".equals(fieldId)) {
            Student student = getStudentService().findBySno(fieldValue);
            if (student == null || (student.getId().equals(id) && student.getSno().equals(fieldValue))) {
                //如果msg 不为空 将弹出提示框
                response.validateSuccess(fieldId, "");
            } else {
                response.validateFail(fieldId, "学号已被其他人使用");
            }
        }
        return response.result();
    }
}
