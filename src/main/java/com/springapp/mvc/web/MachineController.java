package com.springapp.mvc.web;

import com.springapp.mvc.domain.Machine;
import com.springapp.mvc.service.FiltersService;
import com.springapp.mvc.service.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
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
        List<Machine> machineList = machineService.listMachine();
        map.put("machineList", machineList);
        putPagesInfo(map, machineList.size());
        putFilters(map);
    }

    private void putPagesInfo(Map<String,Object> map, int itemsNum) {
        int itemsPerPage = 6;
        int pagesNum = itemsNum / itemsPerPage;
        if(itemsNum % itemsPerPage != 0) {
            pagesNum++;
        }
        map.put("itemsPerPage", itemsPerPage);
        map.put("itemsNum", itemsNum);
        map.put("pagesNum", pagesNum);
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
        List<Machine> machineList = machineService.listFiltered(brands, yearRange, priceRange, locations, cncs,
                xMotionRange, yMotionRange, zMotionRange, xTableRange, yTableRange);
        map.put("machineList", machineList);
        putPagesInfo(map, machineList.size());
        putFilters(map);
    }

    @RequestMapping(value="/machine", method = RequestMethod.GET)
    public void machineItem(@RequestParam("productId") String productId, Map<String, Object> map) {
        map.put("machine", machineService.getMachine(productId));
    }

    @RequestMapping(value="/compare", method = RequestMethod.GET)
    public void comparison() {}

}