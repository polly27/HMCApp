package com.springapp.mvc.filters;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="machinelocation_filter", catalog = "hmc")
public class MachineLocationFilter {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "machineLocation")
    private String machineLocation;

    public String getMachineLocation() {
        return machineLocation;
    }

    public void setMachineLocation(String machineLocation) {
        this.machineLocation = machineLocation;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
