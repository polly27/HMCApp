package com.springapp.mvc.domain.lathe;

import javax.persistence.*;

@Entity
@Table(name = "system_cnc_filter", schema = "", catalog = "lathe")
public class SystemCncLatheFilterEntity {
    private String systemCnc;
    private Integer num;

    @Id
    @Column(name = "systemCNC", nullable = false, insertable = true, updatable = true, length = 255)
    public String getSystemCnc() {
        return systemCnc;
    }

    public void setSystemCnc(String systemCnc) {
        this.systemCnc = systemCnc;
    }

    @Basic
    @Column(name = "num", nullable = true, insertable = true, updatable = true)
    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SystemCncLatheFilterEntity that = (SystemCncLatheFilterEntity) o;

        if (num != null ? !num.equals(that.num) : that.num != null) return false;
        if (systemCnc != null ? !systemCnc.equals(that.systemCnc) : that.systemCnc != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = systemCnc != null ? systemCnc.hashCode() : 0;
        result = 31 * result + (num != null ? num.hashCode() : 0);
        return result;
    }
}
