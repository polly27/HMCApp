package com.springapp.mvc.util;

import com.springapp.mvc.domain.Machine;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
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

    public static Machine readMachine(String path) throws IOException{
        FileInputStream fis = new FileInputStream(new File(path));
        Workbook workbook = getWorkbook(fis,path);
        Sheet firstSheet = workbook.getSheetAt(0);
        Iterator<Row> rowIterator = firstSheet.iterator();

        Machine machine = new Machine();
        machine.setProductId(rowIterator.next().getCell(1).getStringCellValue());
        machine.setMachineType(rowIterator.next().getCell(1).getStringCellValue());
        machine.setModel(rowIterator.next().getCell(1).getStringCellValue());
        machine.setProducer(rowIterator.next().getCell(1).getStringCellValue());
        machine.setProducingCountry(rowIterator.next().getCell(1).getStringCellValue());
        machine.setSystemCNC(rowIterator.next().getCell(1).getStringCellValue());
        machine.setFullSystemCNC(rowIterator.next().getCell(1).getStringCellValue());
        machine.setProductionYear((int) rowIterator.next().getCell(1).getNumericCellValue());
        machine.setMachineLocation(rowIterator.next().getCell(1).getStringCellValue());
        machine.setAxisCount((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setxMotion((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setyMotion((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setzMotion((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setxTableSize((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setyTableSize((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setTableLoad((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setSpindleTaper(rowIterator.next().getCell(1).getStringCellValue());
        machine.setSpindleRotationFreq((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setSpindlePower(rowIterator.next().getCell(1).getStringCellValue());
        machine.setSpindleMaxTorque((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setSpindleType(rowIterator.next().getCell(1).getStringCellValue());
        machine.setSpindleCoolingMethod(rowIterator.next().getCell(1).getStringCellValue());
        machine.setStoreType(rowIterator.next().getCell(1).getStringCellValue());
        machine.setToolCount((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setMaxToolDiameter((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setMaxToolWeight((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setToolReplacementTime((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setPositionPrecision(rowIterator.next().getCell(1).getStringCellValue());
        machine.setRepositionPrecision(rowIterator.next().getCell(1).getStringCellValue());
        machine.setSpindleRuntime((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setMachineLaunching((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setEquipment(rowIterator.next().getCell(1).getStringCellValue());
        machine.setMachineCondition(rowIterator.next().getCell(1).getStringCellValue());
        machine.setCost((int)rowIterator.next().getCell(1).getNumericCellValue());
        machine.setPhoto1(rowIterator.next().getCell(1).getStringCellValue());
        machine.setPhoto2(rowIterator.next().getCell(1).getStringCellValue());
        machine.setPhoto3(rowIterator.next().getCell(1).getStringCellValue());
        machine.setDescription(rowIterator.next().getCell(1).getStringCellValue());
        machine.setFullDescription(rowIterator.next().getCell(1).getStringCellValue());

        fis.close();
        return machine;
    }

}
