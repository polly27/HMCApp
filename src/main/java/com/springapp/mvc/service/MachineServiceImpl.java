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
    public void addMachines (String path) {
        machineDAO.addMachines(path);
    }

    @Transactional
    public String uploadMachinesFile(MultipartFile multipartFile) throws IOException{
        return FileUpload.uploadCSV(multipartFile);
    }

    @Transactional
    public void uploadPhotos(MultipartFile[] photos) {
        for (int i = 0; i < photos.length; i++) {
            try {
                String fileName = FileUpload.uploadPhoto(photos[i]);
                System.out.println("Successfully uploaded " + fileName);
            } catch (IOException e) {
                System.out.println("Failed to upload photo: " + e.getMessage());
            }
        }
    }
}
