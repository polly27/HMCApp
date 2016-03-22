package com.springapp.mvc.dao;

import com.springapp.mvc.domain.Machine;

import java.util.List;

public interface MachineDAO {
    public List<Machine> listMachine();
    public Machine getMachine(String productId);
    public void addMachines(String path);
    public void removeMachine(String productId);
    public List<Machine> listFiltered(String[] brandArr, int[] yearRangeArr, int[] priceRangeArr,
        String[] locationArr, String[] cncArr, int[] xMotionRangeArr, int[] yMotionRangeArr,
        int[] zMotionRangeArr,int[] xTableRangeArr, int[] yTableRangeArr);
}
