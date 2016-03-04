package com.springapp.mvc.web;

import com.springapp.mvc.domain.Machine;
import com.springapp.mvc.service.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public void productsList(Map<String, Object> map) {
        map.put("machine", new Machine());
        map.put("machineList", machineService.listMachine());
    }

    @RequestMapping(value="/machine", method = RequestMethod.GET)
    public void machineItem(@RequestParam("productId") String productId, Map<String, Object> map) {
        map.put("machine", machineService.getMachine(productId));
    }

    @RequestMapping(value = "/admin/addCSV", method = RequestMethod.POST)
    public String addMachines(@RequestParam("textFile") MultipartFile multipartFile){
        if (!multipartFile.isEmpty()) {
            machineService.uploadMachinesFile(multipartFile);
        }
        return "redirect:/list";
    }

    @RequestMapping(value = "/admin/addPhotos", method = RequestMethod.POST)
    public String addPhotos(@RequestParam("photosCollection") MultipartFile[] photos) {
        if (photos != null && photos.length > 0) {
            machineService.uploadPhotos(photos);
        }
        return "redirect:/list";
    }

    @RequestMapping(value="/admin", method = RequestMethod.GET)
    public void admin() {}
}