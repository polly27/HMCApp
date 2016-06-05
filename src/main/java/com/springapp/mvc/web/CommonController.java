package com.springapp.mvc.web;

import com.springapp.mvc.service.interfaces.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
public class CommonController {

    @Autowired
    private MachineService machineService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView home() {
        return new ModelAndView("index");
    }

    @RequestMapping(value = "/error403", method = RequestMethod.GET)
    public void error403() { }

    @RequestMapping(value = "/error404", method = RequestMethod.GET)
    public void error404() { }

    @RequestMapping(value = "/error500", method = RequestMethod.GET)
    public void error500() { }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin() {
        return "redirect:/admin/";
    }

    @RequestMapping(value = "/hmc/", method = RequestMethod.GET)
    public String hmc() {
        return "redirect:/hmc";
    }

    @RequestMapping(value = "/siteMap", method = RequestMethod.GET)
    public void siteMap(Map<String, Object> map) {
        map.put("shortMachineList",machineService.listMachineForSiteMap());
    }


}