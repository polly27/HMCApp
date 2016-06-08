package com.springapp.mvc.util;

import com.springapp.mvc.domain.hmc.Hmc;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;

public class ReadExcelUtil {

    private static Workbook getWorkbook(FileInputStream inputStream, String excelFilePath) throws IOException {
        Workbook workbook = null;
        if (excelFilePath.endsWith("xlsx")) {
            workbook = new XSSFWorkbook(inputStream);
        } else if (excelFilePath.endsWith("xls")) {
            workbook = new HSSFWorkbook(inputStream);
        }
        return workbook;
    }

    public static Hmc readMachine(File file) throws IOException{
        FileInputStream fis = new FileInputStream(file);
        Workbook workbook = getWorkbook(fis,file.getPath());
        Sheet firstSheet = workbook.getSheetAt(0);
        Iterator<Row> rowIterator = firstSheet.iterator();
        DataFormatter df = new DataFormatter();

        Hmc machine = new Hmc();
        machine.setProductId(df.formatCellValue(rowIterator.next().getCell(1)).trim());
        Row tmp = rowIterator.next();
        machine.setMachineTypeEn(df.formatCellValue(tmp.getCell(1)).trim());
        machine.setMachineTypeRu(df.formatCellValue(tmp.getCell(2)).trim());
        machine.setModel(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setBrand(df.formatCellValue(rowIterator.next().getCell(1)).trim());
        tmp = rowIterator.next();
        machine.setProducingCountryEn(df.formatCellValue(tmp.getCell(1)));
        machine.setProducingCountryRu(df.formatCellValue(tmp.getCell(2)));
        machine.setSystemCNC(df.formatCellValue(rowIterator.next().getCell(1)).trim());
        machine.setFullSystemCNC(df.formatCellValue(rowIterator.next().getCell(1)).trim());
        machine.setProductionYear((int) rowIterator.next().getCell(1).getNumericCellValue());
        tmp = rowIterator.next();
        machine.setMachineConditionEn(df.formatCellValue(tmp.getCell(1)));
        machine.setMachineConditionRu(df.formatCellValue(tmp.getCell(2)));
        tmp = rowIterator.next();
        machine.setMachineLocationEn(df.formatCellValue(tmp.getCell(1)).trim());
        machine.setMachineLocationRu(df.formatCellValue(tmp.getCell(2)).trim());
        machine.setAxisCount(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setxMotion((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setyMotion((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setzMotion((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setxTableSize((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setyTableSize((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setTableLoad(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setSpindleTaper(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setSpindleRotationFreq(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setSpindlePower(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setToolCount(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setMaxToolDiameter(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setMaxToolWeight(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setMaxToolLength(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setToolReplacementTime(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setChipReplacementTime(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setPositionRepositionPrecision(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setSpindleRuntime(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setMachineLaunching(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setPrice((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setPhoto1(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setPhoto2(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setPhoto3(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setPhoto4(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setPhoto5(df.formatCellValue(rowIterator.next().getCell(1)));
        tmp = rowIterator.next();
        machine.setDescriptionEn(df.formatCellValue(tmp.getCell(1)));
        machine.setDescriptionRu(df.formatCellValue(tmp.getCell(2)));
        machine.setVideo1(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setVideo2(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setVideo3(df.formatCellValue(rowIterator.next().getCell(1)));
        machine.setIsSold(df.formatCellValue(rowIterator.next().getCell(1)).trim());
        if(machine.getIsSold().equals("")) {
            machine.setIsSold("No");
        }
        fis.close();
        return machine;
    }

}
