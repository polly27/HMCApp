package com.springapp.mvc.util;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

public class UploadMiltipartFileUtil {
    private static String pathToSrc;
    private static String pathToTarget;

    static {
        String tmp = Thread.currentThread().getContextClassLoader().getResource("/").getPath();

        File file = new File(new File(tmp).getParentFile().getParentFile().getParentFile()
                .getParentFile().getAbsolutePath() + "/src/main/webapp/resources/");
        pathToSrc = file.getAbsolutePath();

        file = new File(new File(tmp).getParentFile().getParentFile().getAbsolutePath() + "/resources/");
        pathToTarget = file.getAbsolutePath();
    }

    private static String upload(String path, MultipartFile multipartFile) throws IOException{
        File file = new File(path);
        FileUtils.writeByteArrayToFile(file, multipartFile.getBytes());
        return file.getAbsolutePath();
    }

    public static String uploadMachineFile(MultipartFile multipartFile) throws IOException{
        return upload(pathToTarget + "/machines.xlsx", multipartFile);
    }

    public static void uploadPhoto(MultipartFile photo) throws IOException{
        upload(pathToSrc + "/images/products/" + photo.getOriginalFilename(), photo);
        upload(pathToTarget + "/images/products/" + photo.getOriginalFilename(), photo);
    }
}
