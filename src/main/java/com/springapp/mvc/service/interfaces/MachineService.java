package com.springapp.mvc.service.interfaces;

import com.springapp.mvc.domain.Machine;

import java.util.List;

public interface MachineService {
    public List<Machine> listMachine();

    public Machine getMachine(String productId);

    public List<Machine> getMachinesList(String[] productIdArr);

    public void removeMachine(String productId);

    public List<Machine> listFiltered(String brands, String yearRange, String priceRange, String locations,
                                      String cncs, String xMotionRange, String yMotionRange, String zMotionRange,
                                      String xTableRange, String yTableRange);

    public void editMachine(String productId, String machineTypeEn, String model, String brand, String producingCountryEn,
                            String systemCNC, String fullSystemCNC, String productionYear, String machineLocationEn,
                            String machineConditionEn, String axisCount, String xMotion, String yMotion, String zMotion,
                            String xTableSize,String yTableSize, String tableLoad, String spindleTaper, String spindleRotationFreq,
                            String spindlePower, String toolCount, String maxToolDiameter, String maxToolLength,
                            String maxToolWeight, String toolReplacementTime, String chipReplacementTime,
                            String positionRepositionPrecision, String spindleRuntime, String machineLaunching, String price,
                            String isSold, String descriptionEn, String photo1, String photo2, String photo3, String photo4,
                            String photo5, String video1, String video2, String video3);
}
