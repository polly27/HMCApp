package com.springapp.mvc.service;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public interface WorkWithFilesService {
    public ResponseEntity<byte[]> getPDFOffer(String products, String company, String director);
    public ResponseEntity<byte[]> getPDFOfferSingle(String productId, String company, String director);
    public void uploadMachines(MultipartFile[] machines);
    public void uploadPhotos(MultipartFile[] photos);
    public String[] listImage();
    public void removeImage(String image);
}
