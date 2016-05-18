package com.springapp.mvc.dao.interfaces;

import com.springapp.mvc.domain.Machine;

import java.util.List;

public interface MachineDAO {
    public List<Machine> listMachine();
    public List<String[]> listMachineForSiteMap();
    public Machine getMachine(String productId);
    public void addMachine(Machine machine);
    public void removeMachine(String productId);
    public List<Machine> listFiltered(String[] brandArr, int[] yearRangeArr, int[] priceRangeArr,
        String[] locationArr, String[] cncArr, int[] xMotionRangeArr, int[] yMotionRangeArr,
        int[] zMotionRangeArr,int[] xTableRangeArr, int[] yTableRangeArr);
    public void editMachine(Machine machine);
}
