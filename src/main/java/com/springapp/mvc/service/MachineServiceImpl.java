package com.springapp.mvc.service;

import com.springapp.mvc.dao.MachineDAO;
import com.springapp.mvc.domain.Machine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    public void addMachines (String path) {
        machineDAO.addMachines(path
        );
    }
}
