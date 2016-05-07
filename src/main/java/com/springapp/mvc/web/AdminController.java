package com.springapp.mvc.web;

import com.springapp.mvc.domain.Machine;
import com.springapp.mvc.service.interfaces.AdminDataService;
import com.springapp.mvc.service.interfaces.FiltersService;
import com.springapp.mvc.service.interfaces.MachineService;
import com.springapp.mvc.service.interfaces.WorkWithFilesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {
    @Autowired
    private MachineService machineService;

    @Autowired
    private FiltersService filtersService;

    @Autowired
    private AdminDataService adminDataService;

    @Autowired
    private WorkWithFilesService workWithFilesService;

    @RequestMapping(value="/adminEntry", method = RequestMethod.GET)
    public void adminEntry() {}

    @RequestMapping(value="/adminEntry", method = RequestMethod.POST)
    public String goToAdmin() {
        return "redirect:/adminMachines";
    }

    @RequestMapping(value="/adminData", method = RequestMethod.GET)
    public void adminData(Map<String,Object> map) {
        map.put("adminData", adminDataService.getAdminData());
    }

    @RequestMapping(value = "/adminData", method = RequestMethod.POST)
    public String renewAdminData(@RequestParam("email") String email){
        adminDataService.renewAdminData(email);
        return "redirect:/adminData";
    }

    @RequestMapping(value="/adminMachines", method = RequestMethod.GET)
    public void adminMachines(Map<String,Object> map) {
        List<Machine> machineList = machineService.listMachine();
        map.put("machineList", machineList);
        putPagesInfo(map, machineList.size());
    }

    private void putPagesInfo(Map<String, Object> map, int itemsNum) {
        int itemsPerPage = 10;
        int pagesNum = itemsNum / itemsPerPage;
        if (itemsNum % itemsPerPage != 0) {
            pagesNum++;
        }
        map.put("itemsPerPage", itemsPerPage);
        map.put("itemsNum", itemsNum);
        map.put("pagesNum", pagesNum);
    }

    @RequestMapping(value = "/adminMachines/edit", method = RequestMethod.POST)
    public String editMachine(@RequestParam("productId") String productId,
                              @RequestParam("machineTypeEn") String machineTypeEn,
                              @RequestParam("model") String model,
                              @RequestParam("brand") String brand,
                              @RequestParam("producingCountryEn") String producingCountryEn,
                              @RequestParam("systemCNC") String systemCNC,
                              @RequestParam("fullSystemCNC") String fullSystemCNC,
                              @RequestParam("productionYear") String productionYear,
                              @RequestParam("machineConditionEn") String machineConditionEn,
                              @RequestParam("machineLocationEn") String machineLocationEn,
                              @RequestParam("axisCount") String axisCount,
                              @RequestParam("xMotion") String xMotion,
                              @RequestParam("yMotion") String yMotion,
                              @RequestParam("zMotion") String zMotion,
                              @RequestParam("xTableSize") String xTableSize,
                              @RequestParam("yTableSize") String yTableSize,
                              @RequestParam("tableLoad") String tableLoad,
                              @RequestParam("spindleTaper") String spindleTaper,
                              @RequestParam("spindleRotationFreq") String spindleRotationFreq,
                              @RequestParam("spindlePower") String spindlePower,
                              @RequestParam("toolCount") String toolCount,
                              @RequestParam("maxToolDiameter") String maxToolDiameter,
                              @RequestParam("maxToolWeight") String maxToolWeight,
                              @RequestParam("maxToolLength") String maxToolLength,
                              @RequestParam("toolReplacementTime") String toolReplacementTime,
                              @RequestParam("chipReplacementTime") String chipReplacementTime,
                              @RequestParam("positionRepositionPrecision") String positionRepositionPrecision,
                              @RequestParam("spindleRuntime") String spindleRuntime,
                              @RequestParam("machineLaunching") String machineLaunching,
                              @RequestParam("price") String price,
                              @RequestParam("isSold") String isSold,
                              @RequestParam("descriptionEn") String descriptionEn,
                              @RequestParam("photo1") String photo1,
                              @RequestParam("photo2") String photo2,
                              @RequestParam("photo3") String photo3,
                              @RequestParam("photo4") String photo4,
                              @RequestParam("photo5") String photo5,
                              @RequestParam("video1") String video1,
                              @RequestParam("video2") String video2,
                              @RequestParam("video3") String video3){
        machineService.editMachine(productId, machineTypeEn, model, brand, producingCountryEn, systemCNC, fullSystemCNC,
                productionYear, machineLocationEn, machineConditionEn, axisCount, xMotion, yMotion, zMotion, xTableSize,
                yTableSize, tableLoad, spindleTaper, spindleRotationFreq, spindlePower, toolCount, maxToolDiameter,
                maxToolLength, maxToolWeight, toolReplacementTime, chipReplacementTime, positionRepositionPrecision,
                spindleRuntime, machineLaunching, price, isSold, descriptionEn, photo1, photo2, photo3, photo4, photo5,
                video1, video2, video3);
        return "redirect:/adminMachines";
    }

    @RequestMapping(value = "/adminMachines/upload", method = RequestMethod.POST)
    public String adminUploadMachinesFromFiles(@RequestParam("textFile") MultipartFile[] machines, HttpServletRequest request){
        if (machines != null && machines.length > 0) {
            String path = request.getServletContext().getRealPath("") + "/resources/";
            workWithFilesService.uploadMachines(path, machines);
        }
        return "redirect:/adminMachines";
    }

    @RequestMapping(value = "/adminMachines/remove", method = RequestMethod.GET)
    public String removeMachine(@RequestParam("productId") String productId){
        machineService.removeMachine(productId);
        return "redirect:/adminMachines";
    }

    @RequestMapping(value = "/adminMachines/renewFilters", method = RequestMethod.POST)
    public String renewFilters(){
        filtersService.renewFilters();
        return "redirect:/adminMachines";
    }

    @RequestMapping(value = "/adminGallery", method = RequestMethod.GET)
    public void adminGallery(HttpServletRequest request, Map<String,Object> map){
        String path = request.getServletContext().getRealPath("") + "/resources/images/products";
        map.put("imageList", workWithFilesService.listImage(path));
    }


    @RequestMapping(value = "/adminGallery/upload", method = RequestMethod.POST)
    public String adminUploadImages(@RequestParam("imageCollection") MultipartFile[] images, HttpServletRequest request){
        if (images != null && images.length > 0) {
            String path = request.getServletContext().getRealPath("") + "/resources/images/products";
            workWithFilesService.uploadImages(path, images);
        }
        return "redirect:/adminGallery";
    }

    @RequestMapping(value = "/adminGallery/remove", method = RequestMethod.GET)
    public String removeImage(@RequestParam("image") String image, HttpServletRequest request) {
        String path = request.getServletContext().getRealPath("") + "/resources/images/products";
        workWithFilesService.removeImage(path,image);
        return "redirect:/adminGallery";
    }


}
