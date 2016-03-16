package com.springapp.mvc.filters;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="systemcnc_filter", catalog = "hmc")
public class SystemCNCFilter {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "systemCNC")
    private String systemCNC;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSystemCNC() {
        return systemCNC;
    }

    public void setSystemCNC(String systemCNC) {
        this.systemCNC = systemCNC;
    }
}
