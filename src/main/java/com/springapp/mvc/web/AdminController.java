package com.springapp.mvc.web;

import com.springapp.mvc.service.FiltersService;
import com.springapp.mvc.service.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

@Controller
public class AdminController {
    @Autowired
    private MachineService machineService;

    @Autowired
    private FiltersService filtersService;

    @RequestMapping(value="/adminEntry", method = RequestMethod.GET)
    public void adminEntry() {}

    @RequestMapping(value="/adminEntry", method = RequestMethod.POST)
    public String goToAdmin() {
        return "redirect:/admin";
    }

    @RequestMapping(value="/admin", method = RequestMethod.GET)
    public void admin(Map<String,Object> map) {
        map.put("machineList", machineService.listMachine());
    }

    @RequestMapping(value = "/admin/addCSV", method = RequestMethod.POST)
    public String addMachines(@RequestParam("textFile") MultipartFile multipartFile){
        if (!multipartFile.isEmpty()) {
            machineService.uploadMachinesFile(multipartFile);
        }
        return "redirect:/admin";
    }

    @RequestMapping(value = "/admin/addPhotos", method = RequestMethod.POST)
    public String addPhotos(@RequestParam("photosCollection") MultipartFile[] photos) {
        if (photos != null && photos.length > 0) {
            machineService.uploadPhotos(photos);
        }
        return "redirect:/admin";
    }

    @RequestMapping(value = "/admin/renewFilters", method = RequestMethod.POST)
    public String renewFilters(){
        filtersService.renewFilters();
        return "redirect:/admin";
    }

    @RequestMapping(value = "/admin/remove/{productId}", method = RequestMethod.GET)
    public String removeMachine(@PathVariable("productId") String productId){
        machineService.removeMachine(productId);
        return "redirect:/admin";
    }

}
