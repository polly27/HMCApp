package com.springapp.mvc.web;

import com.springapp.mvc.domain.hmc.Hmc;
import com.springapp.mvc.domain.lathe.LatheLangShortEntity;
import com.springapp.mvc.service.interfaces.LatheFiltersService;
import com.springapp.mvc.service.interfaces.LatheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Locale;
import java.util.Map;

@Controller
@RequestMapping()
public class LatheController {
    @Autowired
    private LatheService latheService;

    @Autowired
    private LatheFiltersService latheFiltersService;

    @RequestMapping(value = "/lathe", method = RequestMethod.GET)
    public void lathe(Map<String, Object> map, Locale locale) {
        List<LatheLangShortEntity> latheShortList = latheService.listLatheLangShort(locale.getDisplayLanguage());
        map.put("latheShortList", latheShortList);
        putPagesInfo(map, null, latheShortList.size());
        putFilters(map);
    }

    private void putPagesInfo(Map<String, Object> map, String perPage, int itemsNum) {
        int itemsPerPage = (perPage == null) ? 9 : Integer.parseInt(perPage);
        int pagesNum = itemsNum / itemsPerPage;
        if (itemsNum % itemsPerPage != 0) {
            pagesNum++;
        }
        map.put("itemsPerPage", itemsPerPage);
        map.put("itemsNum", itemsNum);
        map.put("pagesNum", pagesNum);
    }

    private void putFilters(Map<String, Object> map) {
        map.put("brandList", latheFiltersService.listBrandLatheFilter());
        map.put("machineLocationList", latheFiltersService.listMachineLocationLatheFilter());
        map.put("cncList", latheFiltersService.listSystemCncLatheFilter());
        map.put("slidersList", latheFiltersService.listSlidersLatheFilter());
    }


}