package com.springapp.mvc.dao;

import com.springapp.mvc.domain.Machine;

import java.util.List;

public interface MachineDAO {
    public List<Machine> listMachine();
    public Machine getMachine(String productId);
    public void addMachines(String path);
}
