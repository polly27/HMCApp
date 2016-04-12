package com.springapp.mvc.util;

import java.io.File;

public class ImageUtil {
    private static String pathToSrc;
    private static String pathToTarget;

    static {
        String tmp = Thread.currentThread().getContextClassLoader().getResource("/").getPath();

        File file = new File(new File(tmp).getParentFile().getParentFile().getParentFile()
                .getParentFile().getAbsolutePath() + "/src/main/webapp/resources/images/products/");
        pathToSrc = file.getAbsolutePath();

        file = new File(new File(tmp).getParentFile().getParentFile().getAbsolutePath()
                + "/resources/images/products/");
        pathToTarget = file.getAbsolutePath();
    }

    public static String[] getListImage() {
        File directory = new File(pathToTarget);
        File[] fList = directory.listFiles();
        String[] listImage = new String[fList.length];
        for (int i = 0; i < fList.length; i++) {
            if (fList[i].isFile()) {
                listImage[i] = fList[i].getName();
            }
        }
        return listImage;
    }

    public static void removeImage(String image) {
        File targetPath = new File(pathToTarget + "/" + image);
        File srcPath = new File(pathToSrc + "/" + image);
        if (targetPath.delete() && srcPath.delete()) {
            System.out.println(image + " is deleted!");
        } else {
            System.out.println("Deleting " + image + " is failed.");
        }
    }
}
