package com.springapp.mvc.service;

import com.springapp.mvc.dao.MachineDAO;
import com.springapp.mvc.domain.Machine;
import com.springapp.mvc.util.GeneratePdfUtil;
import com.springapp.mvc.util.ImageUtil;
import com.springapp.mvc.util.ReadExcelUtil;
import com.springapp.mvc.util.UploadMiltipartFileUtil;
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

@Service
public class WorkWithFilesServiceImpl implements WorkWithFilesService {
    @Autowired
    private MachineDAO machineDAO;

    @Transactional
    public ResponseEntity<byte[]> getPDFOffer(String products, String company, String director) {
        ResponseEntity<byte[]> result = null;
        try {
            String[] productsArr = products.split(";");
            Machine[] machines = new Machine[productsArr.length];
            for (int i = 0; i < machines.length; i++) {
                machines[i] = machineDAO.getMachine(productsArr[i].split(",")[0]);
            }

            String path = GeneratePdfUtil.createPDF(products, machines, company, director);

            File file = new File(path);
            byte[] contents = new byte[(int) file.length()];
            new FileInputStream(file).read(contents);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.parseMediaType("application/pdf"));
            String filename = "VMC-HMC-offer.pdf";
            headers.setContentDispositionFormData(filename, filename);
            headers.setCacheControl("must-revalidate, post-check=0, pre-check=0");
            result = new ResponseEntity<byte[]>(contents, headers, HttpStatus.OK);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return result;
    }

    @Transactional
    public ResponseEntity<byte[]> getPDFOfferSingle(String productId, String company, String director) {
        ResponseEntity<byte[]> result = null;
        try {
            Machine machine = machineDAO.getMachine(productId);

            String path = GeneratePdfUtil.createPDFSingle(machine, company, director);

            File file = new File(path);
            byte[] contents = new byte[(int) file.length()];
            new FileInputStream(file).read(contents);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.parseMediaType("application/pdf"));
            String filename = "VMC-HMC-offer-" + productId + ".pdf";
            headers.setContentDispositionFormData(filename, filename);
            headers.setCacheControl("must-revalidate, post-check=0, pre-check=0");
            result = new ResponseEntity<byte[]>(contents, headers, HttpStatus.OK);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return result;
    }

    @Transactional
    public void uploadMachines(MultipartFile[] machines) {
        for (int i = 0; i < machines.length; i++) {
            try {
                String path = UploadMiltipartFileUtil.uploadMachineFile(machines[i]);
                Machine machine = ReadExcelUtil.readMachine(path);
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
                UploadMiltipartFileUtil.uploadPhoto(photos[i]);
                System.out.println("Successfully uploaded photo: " + photos[i].getOriginalFilename());
            } catch (IOException e) {
                System.out.println("Failed to upload photo: " + e.getMessage());
            }
        }
    }

    @Transactional
    public String[] listImage() {
        return ImageUtil.getListImage();
    }

    @Transactional
    public void removeImage(String image) {
        ImageUtil.removeImage(image);
    }

}
