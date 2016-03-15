package com.springapp.mvc.web;

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
        map.put("machineList", machineService.listMachine());
    }

    @RequestMapping(value="/list", method = RequestMethod.POST)
    public void productsListFiltered(@RequestParam(value = "brand", required = false) String brands,
                                     @RequestParam(value = "yearRange", required = false) String yearRange,
                                     @RequestParam(value = "priceRange", required = false) String priceRange,
                                     @RequestParam(value = "location", required = false) String locations,
                                     @RequestParam(value = "cnc", required = false) String cncs,
                                     @RequestParam(value = "xMotionRange", required = false) String xMotionRange,
                                     @RequestParam(value = "yMotionRange", required = false) String yMotionRange,
                                     @RequestParam(value = "zMotionRange", required = false) String zMotionRange,
                                     @RequestParam(value = "xTableRange", required = false) String xTableRange,
                                     @RequestParam(value = "yTableRange", required = false) String yTableRange,
                                     Map<String, Object> map) {
        map.put("machineList", machineService.listFiltered(brands, yearRange, priceRange, locations, cncs,
                xMotionRange, yMotionRange, zMotionRange, xTableRange, yTableRange));
    }

    @RequestMapping(value="/machine", method = RequestMethod.GET)
    public void machineItem(@RequestParam("productId") String productId, Map<String, Object> map) {
        map.put("machine", machineService.getMachine(productId));
    }

    @RequestMapping(value="/adminEntry", method = RequestMethod.GET)
    public void adminEntry() {}

    @RequestMapping(value="/adminEntry", method = RequestMethod.POST)
    public String goToAdmin() {
        return "redirect:/admin";
    }

    @RequestMapping(value="/admin", method = RequestMethod.GET)
    public void admin() {}

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


}