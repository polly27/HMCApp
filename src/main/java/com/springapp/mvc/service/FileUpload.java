package com.springapp.mvc.service;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

public class FileUpload {
    private static String path;

    static {
        String tmp = Thread.currentThread().getContextClassLoader().getResource("/").getPath();
        File file = new File(new File(tmp).getParentFile().getParentFile().getParentFile()
                .getParentFile().getAbsolutePath() + "/src/main/webapp/resources/images/products/");
        path = file.getAbsolutePath();
    }

    public static String uploadCSV(MultipartFile multipartFile) throws IOException{
        File file = new File(path + "/machines.csv");
        FileUtils.writeByteArrayToFile(file, multipartFile.getBytes());
        return file.getAbsolutePath();
    }

    public static String uploadPhoto(MultipartFile photo) throws IOException{
        String fileName =  path + File.separator + photo.getOriginalFilename();
        File file = new File(fileName);
        FileUtils.writeByteArrayToFile(file, photo.getBytes());
        return fileName;
    }

}
