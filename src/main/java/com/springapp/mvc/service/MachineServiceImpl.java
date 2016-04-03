package com.springapp.mvc.service;

import com.springapp.mvc.dao.MachineDAO;
import com.springapp.mvc.domain.Machine;
import com.springapp.mvc.util.ExcelUtil;
import com.springapp.mvc.util.MiltipartFileUploadUtil;
import com.springapp.mvc.util.PDFUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
public class MachineServiceImpl implements MachineService {
    @Autowired
    private MachineDAO machineDAO;

    @Transactional
    public List<Machine> listMachine() {
        return machineDAO.listMachine();
    }

    @Transactional
    public Machine getMachine(String productId) {
        return machineDAO.getMachine(productId);
    }

    @Transactional
    public void uploadMachines(MultipartFile[] machines) {
        for (int i = 0; i < machines.length; i++) {
            try {
                String path = MiltipartFileUploadUtil.uploadMachineFile(machines[i]);
                Machine machine = ExcelUtil.readMachine(path);
                machineDAO.addMachine(machine);
                System.out.println("Successfully uploaded machine: " + machines[i].getOriginalFilename());
            } catch (IOException e) {
                System.out.println("Failed to upload machine file: " + e.getMessage());
            }
        }
    }

    @Transactional
    public void uploadPhotos(MultipartFile[] photos) {
        for (int i = 0; i < photos.length; i++) {
            try {
                MiltipartFileUploadUtil.uploadPhoto(photos[i]);
                System.out.println("Successfully uploaded photo: " + photos[i].getOriginalFilename());
            } catch (IOException e) {
                System.out.println("Failed to upload photo: " + e.getMessage());
            }
        }
    }

    @Transactional
    public void removeMachine(String productId) {
        machineDAO.removeMachine(productId);
    }

    @Transactional
    public List<Machine> listFiltered(String brands, String yearRange, String priceRange,
                    String locations, String cncs,String xMotionRange, String yMotionRange,
                    String zMotionRange, String xTableRange, String yTableRange) {
        String[] brandArr = (brands != null) ? brands.split(",") : null;
        int[] yearRangeArr = getRangeArr(yearRange);
        int[] priceRangeArr = getRangeArr(priceRange);
        String[] locationArr = (locations != null) ? locations.split(",") : null;
        String[] cncArr = (cncs != null) ? cncs.split(",") : null;
        int[] xMotionRangeArr = getRangeArr(xMotionRange);
        int[] yMotionRangeArr = getRangeArr(yMotionRange);
        int[] zMotionRangeArr = getRangeArr(zMotionRange);
        int[] xTableRangeArr = getRangeArr(xTableRange);
        int[] yTableRangeArr = getRangeArr(yTableRange);
        return machineDAO.listFiltered(brandArr, yearRangeArr, priceRangeArr, locationArr,
                cncArr, xMotionRangeArr, yMotionRangeArr, zMotionRangeArr, xTableRangeArr, yTableRangeArr);
    }

    private int[] getRangeArr(String range) {
        return range.isEmpty() ? null : new int[] {Integer.valueOf(range.split(",")[0]), Integer.valueOf(range.split(",")[1])};
    }

    @Transactional
    public List<Machine> getMachinesList(String[] productIdArr) {
        List<Machine> list = new ArrayList<Machine>();
        for(String productId : productIdArr) {
            list.add(machineDAO.getMachine(productId));
        }
        return list;
    }

    public ResponseEntity<byte[]> getPDFOffer(Machine machine) {
        ResponseEntity<byte[]> result = null;
        try {
            String path = PDFUtil.createPDF(machine);

            File file = new File(path);
            byte[] contents = new byte[(int)file.length()];
            new FileInputStream(file).read(contents);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.parseMediaType("application/pdf"));
            String filename = "VMC&HMC-offer-" + machine.getProductId() + ".pdf";
            headers.setContentDispositionFormData(filename, filename);
            headers.setCacheControl("must-revalidate, post-check=0, pre-check=0");
            result = new ResponseEntity<byte[]>(contents, headers, HttpStatus.OK);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return result;
    }

}
