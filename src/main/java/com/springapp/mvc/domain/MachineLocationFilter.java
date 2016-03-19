package com.springapp.mvc.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="machinelocation_filter", catalog = "hmc")
public class MachineLocationFilter implements Serializable {
    @Id
    @Column(name = "machineLocation")
    private String machineLocation;

    public String getMachineLocation() {
        return machineLocation;
    }

    public void setMachineLocation(String machineLocation) {
        this.machineLocation = machineLocation;
    }
}
