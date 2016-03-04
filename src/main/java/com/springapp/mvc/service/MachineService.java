package com.springapp.mvc.service;

import com.springapp.mvc.domain.Machine;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface MachineService {
    public List<Machine> listMachine();
    public Machine getMachine(String productId);
    public void uploadMachinesFile(MultipartFile multipartFile);
    public void uploadPhotos(MultipartFile[] multipartFile);
}
