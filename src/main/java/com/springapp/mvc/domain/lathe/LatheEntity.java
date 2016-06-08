package com.springapp.mvc.domain.lathe;

import javax.persistence.*;

@Entity
@Table(name = "lathe", schema = "", catalog = "lathe")
@IdClass(LatheEntityPK.class)
public class LatheEntity {
    private int id;
    private String productId;
    private int productionYear;
    private int maxProcessingDiameter;
    private int maxProcessingLength;
    private int xMotion;
    private int yMotion;
    private int zMotion;
    private int price;
    private String photo1;
    private String isSold;
    private int latheFullId;
    private String latheFullProductId;
    private int latheTranslateId;
    private String latheTranslateProductId;

    @Id
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Id
    @Column(name = "productId", nullable = false, insertable = true, updatable = true, length = 255)
    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    @Basic
    @Column(name = "productionYear", nullable = false, insertable = true, updatable = true)
    public int getProductionYear() {
        return productionYear;
    }

    public void setProductionYear(int productionYear) {
        this.productionYear = productionYear;
    }

    @Basic
    @Column(name = "maxProcessingDiameter", nullable = false, insertable = true, updatable = true)
    public int getMaxProcessingDiameter() {
        return maxProcessingDiameter;
    }

    public void setMaxProcessingDiameter(int maxProcessingDiameter) {
        this.maxProcessingDiameter = maxProcessingDiameter;
    }

    @Basic
    @Column(name = "maxProcessingLength", nullable = false, insertable = true, updatable = true)
    public int getMaxProcessingLength() {
        return maxProcessingLength;
    }

    public void setMaxProcessingLength(int maxProcessingLength) {
        this.maxProcessingLength = maxProcessingLength;
    }

    @Basic
    @Column(name = "xMotion", nullable = false, insertable = true, updatable = true)
    public int getxMotion() {
        return xMotion;
    }

    public void setxMotion(int xMotion) {
        this.xMotion = xMotion;
    }

    @Basic
    @Column(name = "yMotion", nullable = false, insertable = true, updatable = true)
    public int getyMotion() {
        return yMotion;
    }

    public void setyMotion(int yMotion) {
        this.yMotion = yMotion;
    }

    @Basic
    @Column(name = "zMotion", nullable = false, insertable = true, updatable = true)
    public int getzMotion() {
        return zMotion;
    }

    public void setzMotion(int zMotion) {
        this.zMotion = zMotion;
    }

    @Basic
    @Column(name = "price", nullable = false, insertable = true, updatable = true)
    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Basic
    @Column(name = "photo1", nullable = false, insertable = true, updatable = true, length = 255)
    public String getPhoto1() {
        return photo1;
    }

    public void setPhoto1(String photo1) {
        this.photo1 = photo1;
    }

    @Basic
    @Column(name = "isSold", nullable = false, insertable = true, updatable = true, length = 45)
    public String getIsSold() {
        return isSold;
    }

    public void setIsSold(String isSold) {
        this.isSold = isSold;
    }

    @Id
    @Column(name = "lathe_full_id", nullable = false, insertable = true, updatable = true)
    public int getLatheFullId() {
        return latheFullId;
    }

    public void setLatheFullId(int latheFullId) {
        this.latheFullId = latheFullId;
    }

    @Id
    @Column(name = "lathe_full_productId", nullable = false, insertable = true, updatable = true, length = 255)
    public String getLatheFullProductId() {
        return latheFullProductId;
    }

    public void setLatheFullProductId(String latheFullProductId) {
        this.latheFullProductId = latheFullProductId;
    }

    @Id
    @Column(name = "lathe_translate_id", nullable = false, insertable = true, updatable = true)
    public int getLatheTranslateId() {
        return latheTranslateId;
    }

    public void setLatheTranslateId(int latheTranslateId) {
        this.latheTranslateId = latheTranslateId;
    }

    @Id
    @Column(name = "lathe_translate_productId", nullable = false, insertable = true, updatable = true, length = 255)
    public String getLatheTranslateProductId() {
        return latheTranslateProductId;
    }

    public void setLatheTranslateProductId(String latheTranslateProductId) {
        this.latheTranslateProductId = latheTranslateProductId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LatheEntity that = (LatheEntity) o;

        if (id != that.id) return false;
        if (latheFullId != that.latheFullId) return false;
        if (latheTranslateId != that.latheTranslateId) return false;
        if (maxProcessingDiameter != that.maxProcessingDiameter) return false;
        if (maxProcessingLength != that.maxProcessingLength) return false;
        if (price != that.price) return false;
        if (productionYear != that.productionYear) return false;
        if (xMotion != that.xMotion) return false;
        if (yMotion != that.yMotion) return false;
        if (zMotion != that.zMotion) return false;
        if (isSold != null ? !isSold.equals(that.isSold) : that.isSold != null) return false;
        if (latheFullProductId != null ? !latheFullProductId.equals(that.latheFullProductId) : that.latheFullProductId != null)
            return false;
        if (latheTranslateProductId != null ? !latheTranslateProductId.equals(that.latheTranslateProductId) : that.latheTranslateProductId != null)
            return false;
        if (photo1 != null ? !photo1.equals(that.photo1) : that.photo1 != null) return false;
        if (productId != null ? !productId.equals(that.productId) : that.productId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (productId != null ? productId.hashCode() : 0);
        result = 31 * result + productionYear;
        result = 31 * result + maxProcessingDiameter;
        result = 31 * result + maxProcessingLength;
        result = 31 * result + xMotion;
        result = 31 * result + yMotion;
        result = 31 * result + zMotion;
        result = 31 * result + price;
        result = 31 * result + (photo1 != null ? photo1.hashCode() : 0);
        result = 31 * result + (isSold != null ? isSold.hashCode() : 0);
        result = 31 * result + latheFullId;
        result = 31 * result + (latheFullProductId != null ? latheFullProductId.hashCode() : 0);
        result = 31 * result + latheTranslateId;
        result = 31 * result + (latheTranslateProductId != null ? latheTranslateProductId.hashCode() : 0);
        return result;
    }
}
