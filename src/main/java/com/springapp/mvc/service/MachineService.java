package com.springapp.mvc.service;

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
}
