package com.springapp.mvc.util;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

public class UploadMultipartFileUtil {

    private static File upload(String path, MultipartFile multipartFile) throws IOException{
        File file = new File(path);
        FileUtils.writeByteArrayToFile(file, multipartFile.getBytes());
        return file;
    }

    public static File uploadMachineFile(String path, MultipartFile multipartFile) throws IOException{
        return upload(path + "/machines.xlsx", multipartFile);
    }

    public static void uploadPhoto(String path, MultipartFile photo) throws IOException{
        String a = photo.getOriginalFilename();
        upload(path + "/" + photo.getOriginalFilename(), photo);
    }
}
