package com.springapp.mvc.web;

import com.springapp.mvc.service.interfaces.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
public class CommonController {

    @Autowired
    private MachineService machineService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home() {
        return "redirect:/hmc/";
    }

    @RequestMapping(value = "/error403", method = RequestMethod.GET)
    public void error403() { }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin() {
        return "redirect:/admin/";
    }

    @RequestMapping(value = "/site_map", method = RequestMethod.GET)
    public void siteMap(Map<String, Object> map) {
        map.put("shortMachineList",machineService.listMachineForSiteMap());
    }

}