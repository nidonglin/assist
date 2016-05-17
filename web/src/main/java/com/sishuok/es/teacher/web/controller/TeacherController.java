package com.sishuok.es.teacher.web.controller;

import com.sishuok.es.common.Constants;
import com.sishuok.es.common.web.controller.BaseCRUDController;
import com.sishuok.es.common.web.validate.ValidateResponse;
import com.sishuok.es.student.entity.Student;
import com.sishuok.es.student.service.StudentService;
import com.sishuok.es.sys.user.entity.User;
import com.sishuok.es.sys.user.service.UserService;
import com.sishuok.es.teacher.entity.Teacher;
import com.sishuok.es.teacher.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletContext;
import javax.validation.Valid;

/**
 * Created with IntelliJ IDEA.
 * User: donglin.ni
 * Date: 2016/5/17
 * Time: 13:34
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/teacher/sample")
public class TeacherController extends BaseCRUDController<Teacher, Long> {
    private TeacherService getTeacherService() {
        return (TeacherService) baseService;
    }

    public TeacherController() {
        setResourceIdentity("teacher:sample");
    }

    @Autowired
    private UserService userService;

    @Autowired
    private ServletContext servletContext;

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(
            Model model,
            @Valid @ModelAttribute("m") Teacher m, BindingResult result,
            RedirectAttributes redirectAttributes) {
        getTeacherService().create(m);
        redirectAttributes.addFlashAttribute(Constants.MESSAGE, "新增成功");
        return redirectToUrl(null);
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
        if ("workno".equals(fieldId)) {
            Teacher teacher = getTeacherService().findByWorkno(fieldValue);
            if (teacher == null || (teacher.getId().equals(id) && teacher.getWorkno().equals(fieldValue))) {
                //如果msg 不为空 将弹出提示框
                response.validateSuccess(fieldId, "");
            } else {
                response.validateFail(fieldId, "工号已被其他人使用");
            }
        }
        return response.result();
    }
}
