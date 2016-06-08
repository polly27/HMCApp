package com.springapp.mvc.domain.lathe;

import javax.persistence.*;

@Entity
@Table(name = "sliders_filter", schema = "", catalog = "lathe")
public class LatheSlidersFilterEntity {
    private int id;
    private String productionYear;
    private String price;
    private String xMotion;
    private String yMotion;
    private String zMotion;
    private String maxProcessingDiameter;
    private String maxProcessingLength;

    @Id
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "productionYear", nullable = false, insertable = true, updatable = true, length = 45)
    public String getProductionYear() {
        return productionYear;
    }

    public void setProductionYear(String productionYear) {
        this.productionYear = productionYear;
    }

    @Basic
    @Column(name = "price", nullable = false, insertable = true, updatable = true, length = 45)
    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Basic
    @Column(name = "xMotion", nullable = false, insertable = true, updatable = true, length = 45)
    public String getxMotion() {
        return xMotion;
    }

    public void setxMotion(String xMotion) {
        this.xMotion = xMotion;
    }

    @Basic
    @Column(name = "yMotion", nullable = false, insertable = true, updatable = true, length = 45)
    public String getyMotion() {
        return yMotion;
    }

    public void setyMotion(String yMotion) {
        this.yMotion = yMotion;
    }

    @Basic
    @Column(name = "zMotion", nullable = false, insertable = true, updatable = true, length = 45)
    public String getzMotion() {
        return zMotion;
    }

    public void setzMotion(String zMotion) {
        this.zMotion = zMotion;
    }

    @Basic
    @Column(name = "maxProcessingDiameter", nullable = false, insertable = true, updatable = true, length = 45)
    public String getMaxProcessingDiameter() {
        return maxProcessingDiameter;
    }

    public void setMaxProcessingDiameter(String maxProcessingDiameter) {
        this.maxProcessingDiameter = maxProcessingDiameter;
    }

    @Basic
    @Column(name = "maxProcessingLength", nullable = false, insertable = true, updatable = true, length = 45)
    public String getMaxProcessingLength() {
        return maxProcessingLength;
    }

    public void setMaxProcessingLength(String maxProcessingLength) {
        this.maxProcessingLength = maxProcessingLength;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LatheSlidersFilterEntity that = (LatheSlidersFilterEntity) o;

        if (id != that.id) return false;
        if (maxProcessingDiameter != null ? !maxProcessingDiameter.equals(that.maxProcessingDiameter) : that.maxProcessingDiameter != null)
            return false;
        if (maxProcessingLength != null ? !maxProcessingLength.equals(that.maxProcessingLength) : that.maxProcessingLength != null)
            return false;
        if (price != null ? !price.equals(that.price) : that.price != null) return false;
        if (productionYear != null ? !productionYear.equals(that.productionYear) : that.productionYear != null)
            return false;
        if (xMotion != null ? !xMotion.equals(that.xMotion) : that.xMotion != null) return false;
        if (yMotion != null ? !yMotion.equals(that.yMotion) : that.yMotion != null) return false;
        if (zMotion != null ? !zMotion.equals(that.zMotion) : that.zMotion != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (productionYear != null ? productionYear.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (xMotion != null ? xMotion.hashCode() : 0);
        result = 31 * result + (yMotion != null ? yMotion.hashCode() : 0);
        result = 31 * result + (zMotion != null ? zMotion.hashCode() : 0);
        result = 31 * result + (maxProcessingDiameter != null ? maxProcessingDiameter.hashCode() : 0);
        result = 31 * result + (maxProcessingLength != null ? maxProcessingLength.hashCode() : 0);
        return result;
    }
}
