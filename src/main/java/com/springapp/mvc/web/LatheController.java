package com.springapp.mvc.web;

import com.springapp.mvc.service.interfaces.LatheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
@RequestMapping()
public class LatheController {
    @Autowired
    private LatheService latheService;

    @RequestMapping(value = "/lathe", method = RequestMethod.GET)
    public void hmc(Map<String, Object> map) {

    }

}