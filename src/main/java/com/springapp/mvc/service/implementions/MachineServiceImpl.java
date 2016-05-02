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

}
