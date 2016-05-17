package com.sishuok.es.ship.web.controller;

import com.sishuok.es.common.Constants;
import com.sishuok.es.common.entity.search.SearchOperator;
import com.sishuok.es.common.entity.search.Searchable;
import com.sishuok.es.common.web.bind.annotation.PageableDefaults;
import com.sishuok.es.common.web.controller.BaseCRUDController;
import com.sishuok.es.ship.entity.Ship;
import com.sishuok.es.ship.service.ShipService;
import com.sishuok.es.student.entity.Student;
import com.sishuok.es.student.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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
public class FellowshipController   extends BaseCRUDController<Ship, Long> {

    @Autowired
    private StudentService studentService;

    private ShipService getShipService() {
        return (ShipService) baseService;
    }

    public FellowshipController() {
        setResourceIdentity("fellowship:sample");
    }

    @RequestMapping(method = RequestMethod.GET)
    @PageableDefaults(sort = "id=desc")
    public String list(Searchable searchable, Model model) {

        if (permissionList != null) {
            this.permissionList.assertHasViewPermission();
        }
        searchable.addSearchFilter("type", SearchOperator.eq,1);
        Page<Ship> all = baseService.findAll(searchable);
        List<Ship> ships = all.getContent();
        for(Ship ship:ships){
            String sno = ship.getSno();
            Student st = studentService.findBySno(sno);
            ship.setName(st.getName());
            ship.setClassname(st.getClassname());
        }
        model.addAttribute("page",all );
        setCommonData(model);
        return viewName("list");
    }
    @RequestMapping(value = "audit/status/{status}", method = RequestMethod.GET)
    public String audit(
            HttpServletRequest request,
            @RequestParam("ids") Long[] ids,
            @PathVariable("status") Integer status,
            RedirectAttributes redirectAttributes){

        this.permissionList.assertHasPermission("audit");

        List<Ship> shipList = new ArrayList<Ship>();
        for (Long id : ids) {
            Ship ship = getShipService().findOne(id);
            Student student = studentService.findBySno(ship.getSno());
            ship.setName(student.getName());
            ship.setClassname(student.getClassname());
            if (ship.getState()!= 0) {
                redirectAttributes.addFlashAttribute(Constants.ERROR, "数据中有已通过审核的，不能重复审核！");
                return "redirect:" + request.getAttribute(Constants.BACK_URL);
            }
            shipList.add(ship);
        }
        for (Ship ship : shipList) {
            ship.setState(status);
            getShipService().update(ship);
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

        this.permissionList.assertHasPermission("grant");

        List<Ship> shipList = new ArrayList<Ship>();
        for (Long id : ids) {
            Ship ship = getShipService().findOne(id);
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
            getShipService().update(ship);
        }

        redirectAttributes.addFlashAttribute(Constants.MESSAGE, "操作成功！");

        return "redirect:" + request.getAttribute(Constants.BACK_URL);
    }
}
