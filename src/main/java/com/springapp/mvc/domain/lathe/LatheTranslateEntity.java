package com.springapp.mvc.domain.lathe;

import javax.persistence.*;

@Entity
@Table(name = "lathe_translate", schema = "", catalog = "lathe")
@IdClass(LatheTranslateEntityPK.class)
public class LatheTranslateEntity {
    private int id;
    private String productId;
    private String machineType;
    private String model;
    private String manufacturer;
    private String producingCountry;
    private String systemCnc;
    private String machineCondition;
    private String machineLocation;
    private String description;
    private String languageLang;

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
    @Column(name = "machineType", nullable = false, insertable = true, updatable = true, length = 255)
    public String getMachineType() {
        return machineType;
    }

    public void setMachineType(String machineType) {
        this.machineType = machineType;
    }

    @Basic
    @Column(name = "model", nullable = false, insertable = true, updatable = true, length = 255)
    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    @Basic
    @Column(name = "manufacturer", nullable = false, insertable = true, updatable = true, length = 255)
    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    @Basic
    @Column(name = "producingCountry", nullable = false, insertable = true, updatable = true, length = 255)
    public String getProducingCountry() {
        return producingCountry;
    }

    public void setProducingCountry(String producingCountry) {
        this.producingCountry = producingCountry;
    }

    @Basic
    @Column(name = "systemCNC", nullable = false, insertable = true, updatable = true, length = 255)
    public String getSystemCnc() {
        return systemCnc;
    }

    public void setSystemCnc(String systemCnc) {
        this.systemCnc = systemCnc;
    }

    @Basic
    @Column(name = "machineCondition", nullable = false, insertable = true, updatable = true, length = 255)
    public String getMachineCondition() {
        return machineCondition;
    }

    public void setMachineCondition(String machineCondition) {
        this.machineCondition = machineCondition;
    }

    @Basic
    @Column(name = "machineLocation", nullable = false, insertable = true, updatable = true, length = 255)
    public String getMachineLocation() {
        return machineLocation;
    }

    public void setMachineLocation(String machineLocation) {
        this.machineLocation = machineLocation;
    }

    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 1023)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Id
    @Column(name = "language_lang", nullable = false, insertable = true, updatable = true, length = 2)
    public String getLanguageLang() {
        return languageLang;
    }

    public void setLanguageLang(String languageLang) {
        this.languageLang = languageLang;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LatheTranslateEntity that = (LatheTranslateEntity) o;

        if (id != that.id) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (languageLang != null ? !languageLang.equals(that.languageLang) : that.languageLang != null) return false;
        if (machineCondition != null ? !machineCondition.equals(that.machineCondition) : that.machineCondition != null)
            return false;
        if (machineLocation != null ? !machineLocation.equals(that.machineLocation) : that.machineLocation != null)
            return false;
        if (machineType != null ? !machineType.equals(that.machineType) : that.machineType != null) return false;
        if (manufacturer != null ? !manufacturer.equals(that.manufacturer) : that.manufacturer != null) return false;
        if (model != null ? !model.equals(that.model) : that.model != null) return false;
        if (producingCountry != null ? !producingCountry.equals(that.producingCountry) : that.producingCountry != null)
            return false;
        if (productId != null ? !productId.equals(that.productId) : that.productId != null) return false;
        if (systemCnc != null ? !systemCnc.equals(that.systemCnc) : that.systemCnc != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (productId != null ? productId.hashCode() : 0);
        result = 31 * result + (machineType != null ? machineType.hashCode() : 0);
        result = 31 * result + (model != null ? model.hashCode() : 0);
        result = 31 * result + (manufacturer != null ? manufacturer.hashCode() : 0);
        result = 31 * result + (producingCountry != null ? producingCountry.hashCode() : 0);
        result = 31 * result + (systemCnc != null ? systemCnc.hashCode() : 0);
        result = 31 * result + (machineCondition != null ? machineCondition.hashCode() : 0);
        result = 31 * result + (machineLocation != null ? machineLocation.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (languageLang != null ? languageLang.hashCode() : 0);
        return result;
    }
}
