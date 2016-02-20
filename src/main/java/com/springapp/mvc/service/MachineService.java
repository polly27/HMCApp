package com.springapp.mvc.service;

import com.springapp.mvc.domain.Machine;

import java.util.List;

public interface MachineService {
    public List<Machine> listMachine();
    public Machine getMachine(String productId);
}
