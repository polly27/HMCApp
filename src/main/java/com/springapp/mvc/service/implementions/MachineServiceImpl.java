package com.springapp.mvc.service.implementions;

import com.springapp.mvc.dao.interfaces.MachineDAO;
import com.springapp.mvc.domain.Machine;
import com.springapp.mvc.service.interfaces.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class MachineServiceImpl implements MachineService {
    @Autowired
    private MachineDAO machineDAO;

    @Transactional
    public List<Machine> listMachine() {
        return machineDAO.listMachine();
    }

    @Transactional
    public Machine getMachine(String productId) {
        return machineDAO.getMachine(productId);
    }

    @Transactional
    public void removeMachine(String productId) {
        machineDAO.removeMachine(productId);
    }

    @Transactional
    public List<Machine> listFiltered(String brands, String yearRange, String priceRange,
                                      String locations, String cncs, String xMotionRange, String yMotionRange,
                                      String zMotionRange, String xTableRange, String yTableRange) {
        String[] brandArr = (brands != null) ? brands.split(",") : null;
        int[] yearRangeArr = getRangeArr(yearRange);
        int[] priceRangeArr = getRangeArr(priceRange);
        String[] locationArr = (locations != null) ? locations.split(",") : null;
        String[] cncArr = (cncs != null) ? cncs.split(",") : null;
        int[] xMotionRangeArr = getRangeArr(xMotionRange);
        int[] yMotionRangeArr = getRangeArr(yMotionRange);
        int[] zMotionRangeArr = getRangeArr(zMotionRange);
        int[] xTableRangeArr = getRangeArr(xTableRange);
        int[] yTableRangeArr = getRangeArr(yTableRange);
        return machineDAO.listFiltered(brandArr, yearRangeArr, priceRangeArr, locationArr,
                cncArr, xMotionRangeArr, yMotionRangeArr, zMotionRangeArr, xTableRangeArr, yTableRangeArr);
    }

    private int[] getRangeArr(String range) {
        return range.isEmpty() ? null : new int[]{Integer.valueOf(range.split(",")[0]), Integer.valueOf(range.split(",")[1])};
    }

    @Transactional
    public List<Machine> getMachinesList(String[] productIdArr) {
        List<Machine> list = new ArrayList<Machine>();
        for (String productId : productIdArr) {
            list.add(machineDAO.getMachine(productId));
        }
        return list;
    }

    @Transactional
    public void editMachine(String productId, String machineTypeEn, String model, String brand, String producingCountryEn,
                            String systemCNC, String fullSystemCNC, String productionYear, String machineLocationEn,
                            String machineConditionEn, String axisCount, String xMotion, String yMotion, String zMotion,
                            String xTableSize,String yTableSize, String tableLoad, String spindleTaper, String spindleRotationFreq,
                            String spindlePower, String toolCount, String maxToolDiameter, String maxToolLength,
                            String maxToolWeight, String toolReplacementTime, String chipReplacementTime,
                            String positionRepositionPrecision, String spindleRuntime, String machineLaunching, String price,
                            String isSold, String descriptionEn, String photo1, String photo2, String photo3, String photo4,
                            String photo5, String video1, String video2, String video3) {
        machineDAO.editMachine(productId, machineTypeEn, model, brand, producingCountryEn, systemCNC, fullSystemCNC,
                productionYear, machineLocationEn, machineConditionEn, axisCount, xMotion, yMotion, zMotion, xTableSize,
                yTableSize, tableLoad, spindleTaper, spindleRotationFreq, spindlePower, toolCount, maxToolDiameter,
                maxToolLength, maxToolWeight, toolReplacementTime, chipReplacementTime, positionRepositionPrecision,
                spindleRuntime, machineLaunching, price, isSold, descriptionEn, photo1, photo2, photo3, photo4, photo5,
                video1, video2, video3);
    }
}
