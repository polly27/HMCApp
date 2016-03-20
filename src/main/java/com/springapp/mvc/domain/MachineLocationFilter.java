package com.springapp.mvc.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="machine_location_filter", catalog = "hmc")
public class MachineLocationFilter implements Serializable {
    @Id
    @Column(name = "machineLocation")
    private String machineLocation;

    @Column(name = "num")
    private int num;

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getMachineLocation() {
        return machineLocation;
    }

    public void setMachineLocation(String machineLocation) {
        this.machineLocation = machineLocation;
    }
}
