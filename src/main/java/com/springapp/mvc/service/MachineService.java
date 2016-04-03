package com.springapp.mvc.service;

import com.springapp.mvc.domain.Machine;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface MachineService {
    public List<Machine> listMachine();
    public Machine getMachine(String productId);
    public List<Machine> getMachinesList(String[] productIdArr);
    public void uploadMachines(MultipartFile[] machines);
    public void uploadPhotos(MultipartFile[] photos);
    public void removeMachine(String productId);
    public List<Machine> listFiltered(String brands, String yearRange, String priceRange,
        String locations, String cncs,String xMotionRange, String yMotionRange, String zMotionRange,
        String xTableRange, String yTableRange);
    public ResponseEntity<byte[]> getPDFOffer(Machine machine);
}
