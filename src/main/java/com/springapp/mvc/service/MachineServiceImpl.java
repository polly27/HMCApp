package com.springapp.mvc.service;

import com.springapp.mvc.dao.MachineDAO;
import com.springapp.mvc.domain.Machine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
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
    public void uploadMachinesFile(MultipartFile multipartFile) {
        try {
            String path = FileUpload.uploadCSV(multipartFile);
            machineDAO.addMachines(path);
        } catch (IOException e) {
            System.out.println("Failed to upload CSV file: " + e.getMessage());
        }
    }

    @Transactional
    public void uploadPhotos(MultipartFile[] photos) {
        for (int i = 0; i < photos.length; i++) {
            try {
                FileUpload.uploadPhoto(photos[i]);
                System.out.println("Successfully uploaded photo: " + photos[i].getOriginalFilename());
            } catch (IOException e) {
                System.out.println("Failed to upload photo: " + e.getMessage());
            }
        }
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
}
