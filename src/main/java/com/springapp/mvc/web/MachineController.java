package com.springapp.mvc.web;

import com.springapp.mvc.service.FiltersService;
import com.springapp.mvc.service.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

@Controller
public class MachineController {
    @Autowired
    private MachineService machineService;

    @Autowired
    private FiltersService filtersService;

    @RequestMapping(value="/",method = RequestMethod.GET)
    public String home() {
        return "redirect:/list";
    }

    @SuppressWarnings("unchecked")
    @RequestMapping(value="/list", method = RequestMethod.GET)
    public void productsList(Map<String, Object> map) {
        PagedListHolder machineList = new PagedListHolder(machineService.listMachine());
        int pageSize = 3;
        int page = 1;
        machineList.setPageSize(pageSize);
        machineList.setPage(page);
        map.put("machineList", machineList.getPageList());
        map.put("pages", machineList.getPageCount());
        map.put("showFromTo", new int[]{pageSize * (page - 1) + 1, pageSize * page});
        map.put("machineCount", machineList.getNrOfElements());
        putFilters(map);
    }

    private void putFilters(Map<String,Object> map) {
        map.put("producerList", filtersService.listProducerFilter());
        map.put("machineLocationList", filtersService.listMachineLocationFilter());
        map.put("cncList", filtersService.listSystemCNCFilter());
        map.put("slidersList", filtersService.listSlidersFilter());
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
        putFilters(map);
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