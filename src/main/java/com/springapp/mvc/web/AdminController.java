package com.springapp.mvc.web;

import com.springapp.mvc.domain.Machine;
import com.springapp.mvc.domain.MachineOrder;
import com.springapp.mvc.domain.User;
import com.springapp.mvc.service.interfaces.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private MachineService machineService;

    @Autowired
    private FiltersService filtersService;

    @Autowired
    private UserService userService;

    @Autowired
    private WorkWithFilesService workWithFilesService;

    @Autowired
    private MachineOrderService machineOrderService;

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String admin(HttpServletRequest request) {
        if(request.isUserInRole("ROLE_ADMIN")){
            return "redirect:/admin/machines";
        }
        return "redirect:/admin/adminEntry";
    }

    @RequestMapping(value = "/adminEntry", method = RequestMethod.GET)
    public void adminEntry(@RequestParam(value = "error", required = false) String error,
                           @RequestParam(value = "logout", required = false) String logout,
                           Map<String,Object> map) {
        if (error != null) {
            map.put("error", "Invalid username or password!");
        }
        if (logout != null) {
            map.put("msg", "You've been logged out successfully.");
        }
    }

    @RequestMapping(value="/users", method = RequestMethod.GET)
    public void users(Map<String,Object> map) {
        List<User> userList = userService.listUsers();
        map.put("userList", userList);
        putPagesInfo(map, userList.size(), 20);
    }

    @RequestMapping(value = "/users", method = RequestMethod.POST)
    public String changeUserRole(@RequestParam("userId") String num,
                                 @RequestParam("userRole") String role) {
        userService.setUserRole(num, role);
        return "redirect:/admin/users";
    }

    @RequestMapping(value="/machines", method = RequestMethod.GET)
    public void machines(Map<String,Object> map) {
        List<Machine> machineList = machineService.listMachine();
        map.put("machineList", machineList);
        putPagesInfo(map, machineList.size(), 10);
    }

    private void putPagesInfo(Map<String, Object> map, int itemsNum, int itemsPerPage) {
        int pagesNum = itemsNum / itemsPerPage;
        if (itemsNum % itemsPerPage != 0) {
            pagesNum++;
        }
        map.put("itemsPerPage", itemsPerPage);
        map.put("itemsNum", itemsNum);
        map.put("pagesNum", pagesNum);
    }

    @RequestMapping(value = "/machines/edit", method = RequestMethod.POST)
    public String editMachine(@ModelAttribute("machine") Machine machine){
        machineService.editMachine(machine);
        return "redirect:/admin/machines";
    }

    @RequestMapping(value = "/machines/upload", method = RequestMethod.POST)
    public String adminUploadMachinesFromFiles(@RequestParam("textFile") MultipartFile[] machines, HttpServletRequest request){
        if (machines != null && machines.length > 0) {
            String path = request.getServletContext().getRealPath("") + "/resources/";
            workWithFilesService.uploadMachines(path, machines);
        }
        return "redirect:/admin/machines";
    }

    @RequestMapping(value = "/machines/remove", method = RequestMethod.GET)
    public String removeMachine(@RequestParam("productId") String productId){
        machineService.removeMachine(productId);
        return "redirect:/admin/machines";
    }

    @RequestMapping(value = "/machines/renewFilters", method = RequestMethod.POST)
    public String renewFilters(){
        filtersService.renewFilters();
        return "redirect:/admin/machines";
    }

    @RequestMapping(value = "/gallery", method = RequestMethod.GET)
    public void gallery(HttpServletRequest request, Map<String,Object> map){
        String path = request.getServletContext().getRealPath("") + "/resources/images/products";
        map.put("imageList", workWithFilesService.listImage(path));
    }


    @RequestMapping(value = "/gallery/upload", method = RequestMethod.POST)
    public String adminUploadImages(@RequestParam("imageCollection") MultipartFile[] images, HttpServletRequest request){
        if (images != null && images.length > 0) {
            String path = request.getServletContext().getRealPath("") + "/resources/images/products";
            workWithFilesService.uploadImages(path, images);
        }
        return "redirect:/admin/gallery";
    }

    @RequestMapping(value = "/gallery/remove", method = RequestMethod.GET)
    public String removeImage(@RequestParam("image") String image, HttpServletRequest request) {
        String path = request.getServletContext().getRealPath("") + "/resources/images/products";
        workWithFilesService.removeImage(path,image);
        return "redirect:/admin/gallery";
    }

    @RequestMapping(value = "/orders", method = RequestMethod.GET)
    public void orders(Map<String, Object> map) {
        List<MachineOrder> machineOrderList = machineOrderService.listMachineOrder();
        map.put("orderList", machineOrderList);
        putPagesInfo(map, machineOrderList.size(), 10);
    }

    @RequestMapping(value = "/orders", method = RequestMethod.POST)
    public String changeOrderStatus(@RequestParam("orderId") String orderId,
                                  @RequestParam("orderStatus") String orderStatus) {
        machineOrderService.setMachineOrderStatus(orderId, orderStatus);
        return "redirect:/admin/orders";
    }

}
