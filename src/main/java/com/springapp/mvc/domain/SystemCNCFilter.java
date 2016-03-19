package com.springapp.mvc.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="systemcnc_filter", catalog = "hmc")
public class SystemCNCFilter {
    @Id
    @Column(name = "systemCNC")
    private String systemCNC;

    public String getSystemCNC() {
        return systemCNC;
    }

    public void setSystemCNC(String systemCNC) {
        this.systemCNC = systemCNC;
    }
}
