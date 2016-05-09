package com.springapp.mvc.web;

import com.springapp.mvc.domain.Machine;
import com.springapp.mvc.domain.MachineOrder;
import com.springapp.mvc.service.interfaces.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class MachineController {
    @Autowired
    private MachineService machineService;

    @Autowired
    private FiltersService filtersService;

    @Autowired
    private MachineOrderService machineOrderService;

    @Autowired
    private WorkWithFilesService workWithFilesService;

    @Autowired
    private EmailService emailService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home() {
        return "redirect:/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public void productsList(Map<String, Object> map) {
        List<Machine> machineList = machineService.listMachine();
        map.put("machineList", machineList);
        putPagesInfo(map, machineList.size());
        putFilters(map);
    }

    private void putPagesInfo(Map<String, Object> map, int itemsNum) {
        int itemsPerPage = 9;
        int pagesNum = itemsNum / itemsPerPage;
        if (itemsNum % itemsPerPage != 0) {
            pagesNum++;
        }
        map.put("itemsPerPage", itemsPerPage);
        map.put("itemsNum", itemsNum);
        map.put("pagesNum", pagesNum);
    }

    private void putFilters(Map<String, Object> map) {
        map.put("brandList", filtersService.listBrandFilter());
        map.put("machineLocationList", filtersService.listMachineLocationFilter());
        map.put("cncList", filtersService.listSystemCNCFilter());
        map.put("slidersList", filtersService.listSlidersFilter());
    }

    @RequestMapping(value = "/list", method = RequestMethod.POST)
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

    @RequestMapping(value = "/machine", method = RequestMethod.GET)
    public void machineItem(@RequestParam("productId") String productId, Map<String, Object> map) {
        map.put("machine", machineService.getMachine(productId));
    }

    @RequestMapping(value = "/compare", method = RequestMethod.GET)
    public void comparison(@RequestParam(required = false) String itemsId, Map<String, Object> map) {
        if (itemsId != null) {
            map.put("comparisonList", machineService.getMachinesList(itemsId.split(",")));
        }
    }

    @RequestMapping(value = "/wishList", method = RequestMethod.GET)
    public void wishList(@RequestParam(required = false) String itemsId, Map<String, Object> map) {
        if (itemsId != null) {
            map.put("wishList", machineService.getMachinesList(itemsId.split(",")));
        }
    }

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public void cart(@RequestParam(required = false) String itemsId, Map<String, Object> map) {
        if (itemsId != null) {
            map.put("cartList", machineService.getMachinesList(itemsId.split(",")));
        }
    }

    @RequestMapping(value = "/proposal", method = RequestMethod.GET)
    public void proposal(@RequestParam(required = true) String itemsId, Map<String, Object> map) {
        if (itemsId != null) {
            map.put("proposalList", machineService.getMachinesList(itemsId.split(",")));
        }
    }

    @RequestMapping(value = "/proposal-single", method = RequestMethod.GET)
    public void proposalSingle(@RequestParam(required = true) String productId, Map<String, Object> map) {
        map.put("machine", machineService.getMachine(productId));
    }

    @RequestMapping(value = "/proposal/getPdf", method = RequestMethod.POST)
    public ResponseEntity<byte[]> getPdf(@RequestParam("products") String products,
                                         @RequestParam(value = "company", required = false) String company,
                                         @RequestParam(value = "director", required = false) String director,
                                         HttpServletRequest request) throws Exception {
        String path = request.getServletContext().getRealPath("") + "/resources";
        return workWithFilesService.getPDFOffer(path, products, company, director);
    }

    @RequestMapping(value = "/proposal-single/getPdf", method = RequestMethod.POST)
    public ResponseEntity<byte[]> getPdfSingle(@RequestParam("productId") String productId,
                                               @RequestParam(value = "company", required = false) String company,
                                               @RequestParam(value = "director", required = false) String director,
                                               HttpServletRequest request) throws Exception {
        String path = request.getServletContext().getRealPath("") + "/resources";
        return workWithFilesService.getPDFOfferSingle(path, productId, company, director);
    }

    @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public void checkout(@RequestParam(required = false) String itemsId, Map<String, Object> map) {
        if (itemsId != null) {
            map.put("checkoutList", machineService.getMachinesList(itemsId.split(",")));
        }
    }

    @RequestMapping(value = "/checkout", method = RequestMethod.POST)
    public String checkoutOrder(@RequestParam("firstName") String firstName,
                              @RequestParam("lastName") String lastName,
                              @RequestParam(value = "company", required = false) String company,
                              @RequestParam("address") String address,
                              @RequestParam("postcode") String postcode,
                              @RequestParam("email") String email,
                              @RequestParam("phone") String phone,
                              @RequestParam("orderList") String orderList,
                              @RequestParam("total") String total,
                              @RequestParam("payment") String payment,
                              Map<String,Object> map) {
        MachineOrder machineOrder = machineOrderService.addMachineOrder(firstName, lastName, company, address,
                postcode, email, phone, orderList, total, payment);
        emailService.sendNewOrderEmailToCustomer(email, machineOrder);
        emailService.sendNewOrderEmailToAdmin(machineOrder);
        map.put("message", "The order is successfully made. Check your e-mail for information about the ordering.");
        map.put("orderId",machineOrder.getOrderId());
        return "redirect:/track-your-order";
    }

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public void contact() { }

    @RequestMapping(value = "/track-your-order", method = RequestMethod.GET)
    public void trackYourOrder(@RequestParam(value = "message", required = false) String message,
                               @RequestParam(value = "orderId", required = false) String orderId,
                               Map<String,Object> map) {
        map.put("message", message);
        map.put("orderId", orderId);
    }

    @RequestMapping(value = "/track-your-order", method = RequestMethod.POST)
    public void trackOrder(@RequestParam("orderId") String orderId, Map<String,Object> map) {
        String status = machineOrderService.getMachineOrderStatus(orderId);
        map.put("message", "Status: " + status);
    }

}