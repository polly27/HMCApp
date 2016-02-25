package com.springapp.mvc.web;

import com.springapp.mvc.domain.Machine;
import com.springapp.mvc.service.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
public class MachineController {
    @Autowired
    private MachineService machineService;

    @RequestMapping(value="/",method = RequestMethod.GET)
    public String home() {
        return "redirect:/list";
    }

	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String productsList(Map<String, Object> map) {
        map.put("machine", new Machine());
        map.put("machineList", machineService.listMachine());
        return "list";
    }

    @RequestMapping(value="/admin", method = RequestMethod.GET)
    public String machineItem() {
        return "admin";
    }

}