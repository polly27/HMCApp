package com.springapp.mvc.service.implementions;

import com.springapp.mvc.dao.interfaces.MachineDAO;
import com.springapp.mvc.domain.Machine;
import com.springapp.mvc.service.interfaces.WorkWithFilesService;
import com.springapp.mvc.util.GeneratePdfUtil;
import com.springapp.mvc.util.ImageUtil;
import com.springapp.mvc.util.ReadExcelUtil;
import com.springapp.mvc.util.UploadMultipartFileUtil;
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
    public ResponseEntity<byte[]> getPDFOffer(String path, String products, String company, String director) throws Exception {
        String[] productsArr = products.split(";");
        Machine[] machines = new Machine[productsArr.length];
        for (int i = 0; i < machines.length; i++) {
            machines[i] = machineDAO.getMachine(productsArr[i].split(",")[0]);
        }

        String pathPdf = GeneratePdfUtil.createPDF(path, products, machines, company, director);

        File file = new File(pathPdf);
        byte[] contents = new byte[(int) file.length()];
        new FileInputStream(file).read(contents);

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.parseMediaType("application/pdf"));
        String filename = "VMC-HMC-offer.pdf";
        headers.setContentDispositionFormData(filename, filename);
        headers.setCacheControl("must-revalidate, post-check=0, pre-check=0");
        return new ResponseEntity<byte[]>(contents, headers, HttpStatus.OK);
    }

    @Transactional
    public ResponseEntity<byte[]> getPDFOfferSingle(String path, String productId, String company, String director) throws Exception {
        Machine machine = machineDAO.getMachine(productId);

        String pathPdf = GeneratePdfUtil.createPDFSingle(path, machine, company, director);

        File file = new File(pathPdf);
        byte[] contents = new byte[(int) file.length()];
        new FileInputStream(file).read(contents);

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.parseMediaType("application/pdf"));
        String filename = "VMC-HMC-offer-" + productId + ".pdf";
        headers.setContentDispositionFormData(filename, filename);
        headers.setCacheControl("must-revalidate, post-check=0, pre-check=0");
        return new ResponseEntity<byte[]>(contents, headers, HttpStatus.OK);
    }

    @Transactional
    public void uploadMachines(String path, MultipartFile[] machines) {
        for (int i = 0; i < machines.length; i++) {
            try {
                File machineFile = UploadMultipartFileUtil.uploadMachineFile(path, machines[i]);
                Machine machine = ReadExcelUtil.readMachine(machineFile);
                machineDAO.addMachine(machine);
                machineFile.delete();
                System.out.println("Successfully uploaded machine: " + machines[i].getOriginalFilename());
            } catch (IOException e) {
                System.out.println("Failed to upload machine file: " + e.getMessage());
            }
        }
    }

    @Transactional
    public void uploadImages(String path, MultipartFile[] images) {
        for (int i = 0; i < images.length; i++) {
            try {
                UploadMultipartFileUtil.uploadImage(path, images[i]);
                System.out.println("Successfully uploaded photo: " + images[i].getOriginalFilename());
            } catch (IOException e) {
                System.out.println("Failed to upload photo: " + e.getMessage());
            }
        }
    }

    @Transactional
    public String[] listImage(String path) {
        return ImageUtil.getListImage(path);
    }

    @Transactional
    public void removeImage(String path, String image) {
        ImageUtil.removeImage(path, image);
    }

}
