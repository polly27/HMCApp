package com.springapp.mvc.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="machines")
public class Machine implements Serializable{
    @Id
    @Column(name = "productId")
    private String productId;

    @Column(name = "machineType")
    private String machineType;

    @Column(name = "model")
    private String model;

    @Column(name = "producer")
    private String producer;

    @Column(name = "producingCountry")
    private String producingCountry;

    @Column(name = "systemCNC")
    private String systemCNC;

    @Column(name = "fullSystemCNC")
    private String fullSystemCNC;

    @Column(name = "productionYear")
    private int productionYear;

    @Column(name = "machineLocation")
    private String machineLocation;

    @Column(name = "axisCount")
    private int axisCount;

    @Column(name = "xMotion")
    private int xMotion;

    @Column(name = "yMotion")
    private int yMotion;

    @Column(name = "zMotion")
    private int zMotion;

    @Column(name = "xTableSize")
    private int xTableSize;

    @Column(name = "yTableSize")
    private int yTableSize;

    @Column(name = "tableLoad")
    private int tableLoad;

    @Column(name = "spindleTaper")
    private String spindleTaper;

    @Column(name = "spindleRotationFreq")
    private int spindleRotationFreq;

    @Column(name = "spindlePower")
    private String spindlePower;

    @Column(name = "spindleMaxTorque")
    private int spindleMaxTorque;

    @Column(name = "spindleType")
    private String spindleType;

    @Column(name = "spindleCoolingMethod")
    private String spindleCoolingMethod;

    @Column(name = "storeType")
    private String storeType;

    @Column(name = "toolCount")
    private int toolCount;

    @Column(name = "maxToolDiameter")
    private int maxToolDiameter;

    @Column(name = "maxToolWeight")
    private int maxToolWeight;

    @Column(name = "toolReplacementTime")
    private int toolReplacementTime;

    @Column(name = "positionPrecision")
    private String positionPrecision;

    @Column(name = "repositionPrecision")
    private String repositionPrecision;

    @Column(name = "spindleRuntime")
    private int spindleRuntime;

    @Column(name = "machineLaunching")
    private int machineLaunching;

    @Column(name = "equipment")
    private String equipment;

    @Column(name = "machineCondition")
    private String machineCondition;

    @Column(name = "cost")
    private int cost;

    @Column(name = "photo1")
    private String photo1;

    @Column(name = "photo2")
    private String photo2;

    @Column(name = "photo3")
    private String photo3;

    @Column(name = "description")
    private String description;

    @Column(name = "fullDescription")
    private String fullDescription;

    public String getProductId() {
        return productId;
    }

    public String getMachineType() {
        return machineType;
    }

    public String getModel() {
        return model;
    }

    public String getProducer() {
        return producer;
    }

    public String getProducingCountry() {
        return producingCountry;
    }

    public String getSystemCNC() {
        return systemCNC;
    }

    public String getFullSystemCNC() {
        return fullSystemCNC;
    }

    public int getProductionYear() {
        return productionYear;
    }

    public String getMachineLocation() {
        return machineLocation;
    }

    public int getAxisCount() {
        return axisCount;
    }

    public int getxMotion() {
        return xMotion;
    }

    public int getyMotion() {
        return yMotion;
    }

    public int getzMotion() {
        return zMotion;
    }

    public int getxTableSize() {
        return xTableSize;
    }

    public int getyTableSize() {
        return yTableSize;
    }

    public int getTableLoad() {
        return tableLoad;
    }

    public String getSpindleTaper() {
        return spindleTaper;
    }

    public int getSpindleRotationFreq() {
        return spindleRotationFreq;
    }

    public String getSpindlePower() {
        return spindlePower;
    }

    public int getSpindleMaxTorque() {
        return spindleMaxTorque;
    }

    public String getSpindleType() {
        return spindleType;
    }

    public String getSpindleCoolingMethod() {
        return spindleCoolingMethod;
    }

    public String getStoreType() {
        return storeType;
    }

    public int getToolCount() {
        return toolCount;
    }

    public int getMaxToolDiameter() {
        return maxToolDiameter;
    }

    public int getMaxToolWeight() {
        return maxToolWeight;
    }

    public int getToolReplacementTime() {
        return toolReplacementTime;
    }

    public String getPositionPrecision() {
        return positionPrecision;
    }

    public String getRepositionPrecision() {
        return repositionPrecision;
    }

    public int getSpindleRuntime() {
        return spindleRuntime;
    }

    public int getMachineLaunching() {
        return machineLaunching;
    }

    public String getEquipment() {
        return equipment;
    }

    public String getMachineCondition() {
        return machineCondition;
    }

    public int getCost() {
        return cost;
    }

    public String getPhoto1() {
        return photo1;
    }

    public String getPhoto2() {
        return photo2;
    }

    public String getPhoto3() {
        return photo3;
    }

    public String getDescription() {
        return description;
    }

    public String getFullDescription() {
        return fullDescription;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public void setMachineType(String machineType) {
        this.machineType = machineType;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public void setProducingCountry(String producingCountry) {
        this.producingCountry = producingCountry;
    }

    public void setSystemCNC(String systemCNC) {
        this.systemCNC = systemCNC;
    }

    public void setFullSystemCNC(String fullSystemCNC) {
        this.fullSystemCNC = fullSystemCNC;
    }

    public void setProductionYear(int productionYear) {
        this.productionYear = productionYear;
    }

    public void setMachineLocation(String machineLocation) {
        this.machineLocation = machineLocation;
    }

    public void setAxisCount(int axisCount) {
        this.axisCount = axisCount;
    }

    public void setxMotion(int xMotion) {
        this.xMotion = xMotion;
    }

    public void setyMotion(int yMotion) {
        this.yMotion = yMotion;
    }

    public void setzMotion(int zMotion) {
        this.zMotion = zMotion;
    }

    public void setxTableSize(int xTableSize) {
        this.xTableSize = xTableSize;
    }

    public void setyTableSize(int yTableSize) {
        this.yTableSize = yTableSize;
    }

    public void setTableLoad(int tableLoad) {
        this.tableLoad = tableLoad;
    }

    public void setSpindleTaper(String spindleTaper) {
        this.spindleTaper = spindleTaper;
    }

    public void setSpindleRotationFreq(int spindleRotationFreq) {
        this.spindleRotationFreq = spindleRotationFreq;
    }

    public void setSpindlePower(String spindlePower) {
        this.spindlePower = spindlePower;
    }

    public void setSpindleMaxTorque(int spindleMaxTorque) {
        this.spindleMaxTorque = spindleMaxTorque;
    }

    public void setSpindleType(String spindleType) {
        this.spindleType = spindleType;
    }

    public void setSpindleCoolingMethod(String spindleCoolingMethod) {
        this.spindleCoolingMethod = spindleCoolingMethod;
    }

    public void setStoreType(String storeType) {
        this.storeType = storeType;
    }

    public void setToolCount(int toolCount) {
        this.toolCount = toolCount;
    }

    public void setMaxToolDiameter(int maxToolDiameter) {
        this.maxToolDiameter = maxToolDiameter;
    }

    public void setMaxToolWeight(int maxToolWeight) {
        this.maxToolWeight = maxToolWeight;
    }

    public void setToolReplacementTime(int toolReplacementTime) {
        this.toolReplacementTime = toolReplacementTime;
    }

    public void setPositionPrecision(String positionPrecision) {
        this.positionPrecision = positionPrecision;
    }

    public void setRepositionPrecision(String repositionPrecision) {
        this.repositionPrecision = repositionPrecision;
    }

    public void setSpindleRuntime(int spindleRuntime) {
        this.spindleRuntime = spindleRuntime;
    }

    public void setMachineLaunching(int machineLaunching) {
        this.machineLaunching = machineLaunching;
    }

    public void setEquipment(String equipment) {
        this.equipment = equipment;
    }

    public void setMachineCondition(String machineCondition) {
        this.machineCondition = machineCondition;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public void setPhoto1(String photo1) {
        this.photo1 = photo1;
    }

    public void setPhoto2(String photo2) {
        this.photo2 = photo2;
    }

    public void setPhoto3(String photo3) {
        this.photo3 = photo3;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setFullDescription(String fullDescription) {
        this.fullDescription = fullDescription;
    }
}
