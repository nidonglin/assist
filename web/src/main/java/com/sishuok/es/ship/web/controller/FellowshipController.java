package com.sishuok.es.ship.web.controller;

import com.sishuok.es.common.Constants;
import com.sishuok.es.common.entity.search.SearchOperator;
import com.sishuok.es.common.entity.search.Searchable;
import com.sishuok.es.common.web.bind.annotation.PageableDefaults;
import com.sishuok.es.common.web.controller.BaseCRUDController;
import com.sishuok.es.common.web.controller.BaseController;
import com.sishuok.es.ship.entity.Ship;
import com.sishuok.es.ship.service.ShipService;
import com.sishuok.es.student.entity.Student;
import com.sishuok.es.student.service.StudentService;
import com.sishuok.es.sys.user.entity.User;
import com.sishuok.es.sys.user.web.bind.annotation.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: donglin.ni
 * Date: 2016/5/17
 * Time: 15:09
 * To change this template use File | Settings | File Templates.
 */

/**
 * 助学金
 */
@Controller
@RequestMapping("/fellowship/sample")
public class FellowshipController   extends BaseController<Ship, Long> {

    @Autowired
    private StudentService studentService;
    @Autowired
    private ShipService baseService;
    private static final SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

    public FellowshipController() {
        //setResourceIdentity("fellowship:sample");
    }

    @RequestMapping(method = RequestMethod.GET)
    @PageableDefaults(sort = "id=desc")
    public String lista(@CurrentUser User user,
                       Searchable searchable, Model model) {

        searchable.addSearchFilter("type", SearchOperator.eq,2);
        if(studentService.findBySno(user.getUsername())!=null){
            searchable.addSearchFilter("sno",SearchOperator.eq,user.getUsername());
        }
        Page<Ship> all = baseService.findAll(searchable);
        List<Ship> ships = all.getContent();
        for(Ship ship:ships){
            String sno = ship.getSno();
            Student st = studentService.findBySno(sno);
            ship.setName(st==null?"":st.getName());
            ship.setClassname(st==null?"":st.getClassname());
        }
        model.addAttribute("page", all);
        return viewName("list");
    }
    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String showCreateForm(Model model) {

        setCommonData(model);
        model.addAttribute(Constants.OP_NAME, "新增");
        if (!model.containsAttribute("m")) {
            model.addAttribute("m", newModel());
        }
        return viewName("editForm");
    }
    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(@CurrentUser User user,
                         Model model, @Valid @ModelAttribute("m") Ship m, BindingResult result,
                         RedirectAttributes redirectAttributes) {

        m.setSno(user.getUsername());
        m.setDate(sdf.format(new Date()));
        baseService.save(m);
        redirectAttributes.addFlashAttribute(Constants.MESSAGE, "新增成功");
        return redirectToUrl(null);
    }

    @RequestMapping(value = "audit/status/{status}", method = RequestMethod.GET)
    public String audit(
            HttpServletRequest request,
            @RequestParam("ids") Long[] ids,
            @PathVariable("status") Integer status,
            RedirectAttributes redirectAttributes){


        List<Ship> shipList = new ArrayList<Ship>();
        for (Long id : ids) {
            Ship ship = baseService.findOne(id);
            Student st = studentService.findBySno(ship.getSno());
            ship.setName(st==null?"":st.getName());
            ship.setClassname(st==null?"":st.getClassname());
            if (ship.getState()!= 0) {
                redirectAttributes.addFlashAttribute(Constants.ERROR, "数据中有已通过审核的，不能重复审核！");
                return "redirect:" + request.getAttribute(Constants.BACK_URL);
            }
            shipList.add(ship);
        }
        for (Ship ship : shipList) {
            ship.setState(status);
            baseService.update(ship);
        }

        redirectAttributes.addFlashAttribute(Constants.MESSAGE, "操作成功！");

        return "redirect:" + request.getAttribute(Constants.BACK_URL);
    }

    @RequestMapping(value = "grant/status/{grant}", method = RequestMethod.GET)
    public String grant(
            HttpServletRequest request,
            @RequestParam("ids") Long[] ids,
            @PathVariable("grant") Integer grant,
            RedirectAttributes redirectAttributes){


        List<Ship> shipList = new ArrayList<Ship>();
        for (Long id : ids) {
            Ship ship = baseService.findOne(id);
            Student student = studentService.findBySno(ship.getSno());
            ship.setName(student.getName());
            ship.setClassname(student.getClassname());
            if (ship.getGrant()!= 0) {
                redirectAttributes.addFlashAttribute(Constants.ERROR, "数据中有已发放，不能重复发放！");
                return "redirect:" + request.getAttribute(Constants.BACK_URL);
            }
            shipList.add(ship);
        }
        for (Ship ship : shipList) {
            ship.setGrant(grant);
            baseService.update(ship);
        }

        redirectAttributes.addFlashAttribute(Constants.MESSAGE, "操作成功！");

        return "redirect:" + request.getAttribute(Constants.BACK_URL);
    }
}
