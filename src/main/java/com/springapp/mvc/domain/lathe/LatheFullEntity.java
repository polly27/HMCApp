package com.springapp.mvc.domain.lathe;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@javax.persistence.Table(name = "lathe_full", schema = "", catalog = "lathe")
public class LatheFullEntity {
    private int id;

    @Id
    @javax.persistence.Column(name = "id", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String productId;

    @Id
    @javax.persistence.Column(name = "productId", nullable = false, insertable = true, updatable = true, length = 255)
    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    private String processingDiameter;

    @Basic
    @javax.persistence.Column(name = "processingDiameter", nullable = true, insertable = true, updatable = true, length = 255)
    public String getProcessingDiameter() {
        return processingDiameter;
    }

    public void setProcessingDiameter(String processingDiameter) {
        this.processingDiameter = processingDiameter;
    }

    private String rodPassageDiameter;

    @Basic
    @javax.persistence.Column(name = "rodPassageDiameter", nullable = true, insertable = true, updatable = true, length = 255)
    public String getRodPassageDiameter() {
        return rodPassageDiameter;
    }

    public void setRodPassageDiameter(String rodPassageDiameter) {
        this.rodPassageDiameter = rodPassageDiameter;
    }

    private String spindleRotationFreq;

    @Basic
    @javax.persistence.Column(name = "spindleRotationFreq", nullable = true, insertable = true, updatable = true, length = 255)
    public String getSpindleRotationFreq() {
        return spindleRotationFreq;
    }

    public void setSpindleRotationFreq(String spindleRotationFreq) {
        this.spindleRotationFreq = spindleRotationFreq;
    }

    private String spindlePower;

    @Basic
    @javax.persistence.Column(name = "spindlePower", nullable = true, insertable = true, updatable = true, length = 255)
    public String getSpindlePower() {
        return spindlePower;
    }

    public void setSpindlePower(String spindlePower) {
        this.spindlePower = spindlePower;
    }

    private String spindleHoleDiameter;

    @Basic
    @javax.persistence.Column(name = "spindleHoleDiameter", nullable = true, insertable = true, updatable = true, length = 255)
    public String getSpindleHoleDiameter() {
        return spindleHoleDiameter;
    }

    public void setSpindleHoleDiameter(String spindleHoleDiameter) {
        this.spindleHoleDiameter = spindleHoleDiameter;
    }

    private String counterSpindleRotationFreq;

    @Basic
    @javax.persistence.Column(name = "counterSpindleRotationFreq", nullable = true, insertable = true, updatable = true, length = 255)
    public String getCounterSpindleRotationFreq() {
        return counterSpindleRotationFreq;
    }

    public void setCounterSpindleRotationFreq(String counterSpindleRotationFreq) {
        this.counterSpindleRotationFreq = counterSpindleRotationFreq;
    }

    private String drivenToolsCount;

    @Basic
    @javax.persistence.Column(name = "drivenToolsCount", nullable = true, insertable = true, updatable = true, length = 255)
    public String getDrivenToolsCount() {
        return drivenToolsCount;
    }

    public void setDrivenToolsCount(String drivenToolsCount) {
        this.drivenToolsCount = drivenToolsCount;
    }

    private String nonDrivenToolsCount;

    @Basic
    @javax.persistence.Column(name = "nonDrivenToolsCount", nullable = true, insertable = true, updatable = true, length = 255)
    public String getNonDrivenToolsCount() {
        return nonDrivenToolsCount;
    }

    public void setNonDrivenToolsCount(String nonDrivenToolsCount) {
        this.nonDrivenToolsCount = nonDrivenToolsCount;
    }

    private String positionRepositionPrecision;

    @Basic
    @javax.persistence.Column(name = "positionRepositionPrecision", nullable = true, insertable = true, updatable = true, length = 255)
    public String getPositionRepositionPrecision() {
        return positionRepositionPrecision;
    }

    public void setPositionRepositionPrecision(String positionRepositionPrecision) {
        this.positionRepositionPrecision = positionRepositionPrecision;
    }

    private String positionPrecision;

    @Basic
    @javax.persistence.Column(name = "positionPrecision", nullable = true, insertable = true, updatable = true, length = 255)
    public String getPositionPrecision() {
        return positionPrecision;
    }

    public void setPositionPrecision(String positionPrecision) {
        this.positionPrecision = positionPrecision;
    }

    private String spindleLife;

    @Basic
    @javax.persistence.Column(name = "spindleLife", nullable = true, insertable = true, updatable = true, length = 255)
    public String getSpindleLife() {
        return spindleLife;
    }

    public void setSpindleLife(String spindleLife) {
        this.spindleLife = spindleLife;
    }

    private String machineLaunchingTime;

    @Basic
    @javax.persistence.Column(name = "machineLaunchingTime", nullable = true, insertable = true, updatable = true, length = 255)
    public String getMachineLaunchingTime() {
        return machineLaunchingTime;
    }

    public void setMachineLaunchingTime(String machineLaunchingTime) {
        this.machineLaunchingTime = machineLaunchingTime;
    }

    private String photo2;

    @Basic
    @javax.persistence.Column(name = "photo2", nullable = true, insertable = true, updatable = true, length = 255)
    public String getPhoto2() {
        return photo2;
    }

    public void setPhoto2(String photo2) {
        this.photo2 = photo2;
    }

    private String photo3;

    @Basic
    @javax.persistence.Column(name = "photo3", nullable = true, insertable = true, updatable = true, length = 255)
    public String getPhoto3() {
        return photo3;
    }

    public void setPhoto3(String photo3) {
        this.photo3 = photo3;
    }

    private String photo4;

    @Basic
    @javax.persistence.Column(name = "photo4", nullable = true, insertable = true, updatable = true, length = 255)
    public String getPhoto4() {
        return photo4;
    }

    public void setPhoto4(String photo4) {
        this.photo4 = photo4;
    }

    private String photo5;

    @Basic
    @javax.persistence.Column(name = "photo5", nullable = true, insertable = true, updatable = true, length = 255)
    public String getPhoto5() {
        return photo5;
    }

    public void setPhoto5(String photo5) {
        this.photo5 = photo5;
    }

    private String video1;

    @Basic
    @javax.persistence.Column(name = "video1", nullable = true, insertable = true, updatable = true, length = 255)
    public String getVideo1() {
        return video1;
    }

    public void setVideo1(String video1) {
        this.video1 = video1;
    }

    private String video2;

    @Basic
    @javax.persistence.Column(name = "video2", nullable = true, insertable = true, updatable = true, length = 255)
    public String getVideo2() {
        return video2;
    }

    public void setVideo2(String video2) {
        this.video2 = video2;
    }

    private String video3;

    @Basic
    @javax.persistence.Column(name = "video3", nullable = true, insertable = true, updatable = true, length = 255)
    public String getVideo3() {
        return video3;
    }

    public void setVideo3(String video3) {
        this.video3 = video3;
    }

    private int latheFullTranslateId;

    @Id
    @javax.persistence.Column(name = "lathe_full_translate_id", nullable = false, insertable = true, updatable = true)
    public int getLatheFullTranslateId() {
        return latheFullTranslateId;
    }

    public void setLatheFullTranslateId(int latheFullTranslateId) {
        this.latheFullTranslateId = latheFullTranslateId;
    }

    private String latheFullTranslateProductId;

    @Id
    @javax.persistence.Column(name = "lathe_full_translate_productId", nullable = false, insertable = true, updatable = true, length = 255)
    public String getLatheFullTranslateProductId() {
        return latheFullTranslateProductId;
    }

    public void setLatheFullTranslateProductId(String latheFullTranslateProductId) {
        this.latheFullTranslateProductId = latheFullTranslateProductId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LatheFullEntity that = (LatheFullEntity) o;

        if (id != that.id) return false;
        if (latheFullTranslateId != that.latheFullTranslateId) return false;
        if (counterSpindleRotationFreq != null ? !counterSpindleRotationFreq.equals(that.counterSpindleRotationFreq) : that.counterSpindleRotationFreq != null)
            return false;
        if (drivenToolsCount != null ? !drivenToolsCount.equals(that.drivenToolsCount) : that.drivenToolsCount != null)
            return false;
        if (latheFullTranslateProductId != null ? !latheFullTranslateProductId.equals(that.latheFullTranslateProductId) : that.latheFullTranslateProductId != null)
            return false;
        if (machineLaunchingTime != null ? !machineLaunchingTime.equals(that.machineLaunchingTime) : that.machineLaunchingTime != null)
            return false;
        if (nonDrivenToolsCount != null ? !nonDrivenToolsCount.equals(that.nonDrivenToolsCount) : that.nonDrivenToolsCount != null)
            return false;
        if (photo2 != null ? !photo2.equals(that.photo2) : that.photo2 != null) return false;
        if (photo3 != null ? !photo3.equals(that.photo3) : that.photo3 != null) return false;
        if (photo4 != null ? !photo4.equals(that.photo4) : that.photo4 != null) return false;
        if (photo5 != null ? !photo5.equals(that.photo5) : that.photo5 != null) return false;
        if (positionPrecision != null ? !positionPrecision.equals(that.positionPrecision) : that.positionPrecision != null)
            return false;
        if (positionRepositionPrecision != null ? !positionRepositionPrecision.equals(that.positionRepositionPrecision) : that.positionRepositionPrecision != null)
            return false;
        if (processingDiameter != null ? !processingDiameter.equals(that.processingDiameter) : that.processingDiameter != null)
            return false;
        if (productId != null ? !productId.equals(that.productId) : that.productId != null) return false;
        if (rodPassageDiameter != null ? !rodPassageDiameter.equals(that.rodPassageDiameter) : that.rodPassageDiameter != null)
            return false;
        if (spindleHoleDiameter != null ? !spindleHoleDiameter.equals(that.spindleHoleDiameter) : that.spindleHoleDiameter != null)
            return false;
        if (spindleLife != null ? !spindleLife.equals(that.spindleLife) : that.spindleLife != null) return false;
        if (spindlePower != null ? !spindlePower.equals(that.spindlePower) : that.spindlePower != null) return false;
        if (spindleRotationFreq != null ? !spindleRotationFreq.equals(that.spindleRotationFreq) : that.spindleRotationFreq != null)
            return false;
        if (video1 != null ? !video1.equals(that.video1) : that.video1 != null) return false;
        if (video2 != null ? !video2.equals(that.video2) : that.video2 != null) return false;
        if (video3 != null ? !video3.equals(that.video3) : that.video3 != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (productId != null ? productId.hashCode() : 0);
        result = 31 * result + (processingDiameter != null ? processingDiameter.hashCode() : 0);
        result = 31 * result + (rodPassageDiameter != null ? rodPassageDiameter.hashCode() : 0);
        result = 31 * result + (spindleRotationFreq != null ? spindleRotationFreq.hashCode() : 0);
        result = 31 * result + (spindlePower != null ? spindlePower.hashCode() : 0);
        result = 31 * result + (spindleHoleDiameter != null ? spindleHoleDiameter.hashCode() : 0);
        result = 31 * result + (counterSpindleRotationFreq != null ? counterSpindleRotationFreq.hashCode() : 0);
        result = 31 * result + (drivenToolsCount != null ? drivenToolsCount.hashCode() : 0);
        result = 31 * result + (nonDrivenToolsCount != null ? nonDrivenToolsCount.hashCode() : 0);
        result = 31 * result + (positionRepositionPrecision != null ? positionRepositionPrecision.hashCode() : 0);
        result = 31 * result + (positionPrecision != null ? positionPrecision.hashCode() : 0);
        result = 31 * result + (spindleLife != null ? spindleLife.hashCode() : 0);
        result = 31 * result + (machineLaunchingTime != null ? machineLaunchingTime.hashCode() : 0);
        result = 31 * result + (photo2 != null ? photo2.hashCode() : 0);
        result = 31 * result + (photo3 != null ? photo3.hashCode() : 0);
        result = 31 * result + (photo4 != null ? photo4.hashCode() : 0);
        result = 31 * result + (photo5 != null ? photo5.hashCode() : 0);
        result = 31 * result + (video1 != null ? video1.hashCode() : 0);
        result = 31 * result + (video2 != null ? video2.hashCode() : 0);
        result = 31 * result + (video3 != null ? video3.hashCode() : 0);
        result = 31 * result + latheFullTranslateId;
        result = 31 * result + (latheFullTranslateProductId != null ? latheFullTranslateProductId.hashCode() : 0);
        return result;
    }
}
