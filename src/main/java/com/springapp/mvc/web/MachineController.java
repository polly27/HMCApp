package com.springapp.mvc.web;

import com.springapp.mvc.domain.Machine;
import com.springapp.mvc.service.MachineService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;
import java.util.Map;

@Controller
public class MachineController {
    @Autowired
    private MachineService machineService;

    @Autowired
    private ServletContext servletContext;

    @RequestMapping(value="/",method = RequestMethod.GET)
    public String home() {
        return "redirect:/admin";
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

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addMachines(@RequestParam("textFile") MultipartFile multipartFile) throws IOException {
        if (!multipartFile.isEmpty()) {
            String fileName = servletContext.getRealPath("/WEB-INF/") + File.separator +
                    "files" + File.separator + "machines.csv";
            File file = new File(fileName);
            FileUtils.writeByteArrayToFile(file, multipartFile.getBytes());
            machineService.addMachines(file.getPath());
        }
        return "redirect:/list";
    }

    @RequestMapping(value="/admin", method = RequestMethod.GET)
    public void machineItem() {}
}