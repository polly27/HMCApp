package com.springapp.mvc.util;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.springapp.mvc.domain.Machine;

import java.io.File;
import java.io.FileOutputStream;

public class PDFUtil {

    public static String createPDF(Machine machine) throws Exception {
        String tmp = Thread.currentThread().getContextClassLoader().getResource("/").getPath();
        File file = new File(new File(tmp).getParentFile().getParentFile().getAbsolutePath() + "/resources/");
        String pathToTarget = file.getAbsolutePath();

        Document document = new Document(PageSize.A4,50,50,50,50);
        String path = pathToTarget + "/offer.pdf";
        PdfWriter.getInstance(document, new FileOutputStream(path));
        document.open();

        PdfPTable headerTable = new PdfPTable(3);
        headerTable.setWidthPercentage(100);
        headerTable.setWidths(new int[]{2, 1, 2});
        Image imgLogo = Image.getInstance(pathToTarget + "/images/logotype.png");
        PdfPCell cell1 = new PdfPCell(imgLogo,true);
        cell1.setBorder(Rectangle.NO_BORDER);
        PdfPCell cell2 = new PdfPCell();
        cell2.setBorder(Rectangle.NO_BORDER);
        PdfPCell cell3 = new PdfPCell();
        Paragraph paragraph = new Paragraph("EfTech - vertical and horizontal\nmachine centers\nBelarus, Minsk, P.Glebki st., 11" +
                "\ntel. +37517 XXXXXXX\nvelcom +37529 XXXXXXX");
        cell3.addElement(paragraph);
        cell3.setBorder(Rectangle.NO_BORDER);
        headerTable.addCell(cell1);
        headerTable.addCell(cell2);
        headerTable.addCell(cell3);
        document.add(headerTable);



//        document.add(new Paragraph("table"));
//        document.add(new Paragraph(new Date().toString()));
//        PdfPTable table=new PdfPTable(2);
//
//        PdfPCell cell = new PdfPCell (new Paragraph ("table"));
//
//        cell.setColspan (2);
//        cell.setHorizontalAlignment (Element.ALIGN_CENTER);
//        cell.setPadding (10.0f);
//        cell.setBackgroundColor (new BaseColor(140, 221, 8));
//
//        table.addCell(cell);
//        ArrayList<String[]> row=new ArrayList<String[]>();
//        String[] data=new String[2];
//        data[0]="1";
//        data[1]="2";
//        String[] data1=new String[2];
//        data1[0]="3";
//        data1[1]="4";
//        row.add(data);
//        row.add(data1);
//        for(int i=0;i<row.size();i++)
//        {
//            String[] cols=row.get(i);
//            for(int j=0;j<cols.length;j++){
//                table.addCell(cols[j]);
//            }
//        }
//        document.add(table);


        document.close();
        return path;
    }
}
