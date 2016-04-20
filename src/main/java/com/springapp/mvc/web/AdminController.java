package com.springapp.mvc.web;

import com.springapp.mvc.service.FiltersService;
import com.springapp.mvc.service.MachineService;
import com.springapp.mvc.service.WorkWithFilesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;

@Controller
public class AdminController {
    @Autowired
    private MachineService machineService;

    @Autowired
    private FiltersService filtersService;

    @Autowired
    private WorkWithFilesService workWithFilesService;

    @RequestMapping(value="/adminEntry", method = RequestMethod.GET)
    public void adminEntry() {}

    @RequestMapping(value="/adminEntry", method = RequestMethod.POST)
    public String goToAdmin() {
        return "redirect:/admin";
    }

    @RequestMapping(value="/admin", method = RequestMethod.GET)
    public void admin(HttpServletRequest request, Map<String,Object> map) throws IOException {
        map.put("machineList", machineService.listMachine());
        String path = request.getServletContext().getRealPath("") + "/resources/images/products";
        map.put("imageList", workWithFilesService.listImage(path));
    }

    @RequestMapping(value = "/admin/uploadMachines", method = RequestMethod.POST)
    public String addMachines(@RequestParam("textFile") MultipartFile[] machines, HttpServletRequest request){
        if (machines != null && machines.length > 0) {
            String path = request.getServletContext().getRealPath("") + "/resources/";
            workWithFilesService.uploadMachines(path, machines);
        }
        return "redirect:/admin";
    }

    @RequestMapping(value = "/admin/addPhotos", method = RequestMethod.POST)
    public String addPhotos(@RequestParam("photosCollection") MultipartFile[] photos, HttpServletRequest request){
        if (photos != null && photos.length > 0) {
            String path = request.getServletContext().getRealPath("") + "/resources/images/products";
            workWithFilesService.uploadPhotos(path, photos);
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

    @RequestMapping(value = "/admin/remove", method = RequestMethod.GET)
    public String removeImage(@RequestParam("image") String image, HttpServletRequest request) {
        String path = request.getServletContext().getRealPath("") + "/resources/images/products";
        workWithFilesService.removeImage(path,image);
        return "redirect:/admin";
    }

}
