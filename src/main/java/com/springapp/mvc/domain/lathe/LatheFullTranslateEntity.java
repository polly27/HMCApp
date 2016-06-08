package com.springapp.mvc.domain.lathe;

import javax.persistence.*;

@Entity
@Table(name = "lathe_full_translate", schema = "", catalog = "lathe")
@IdClass(LatheFullTranslateEntityPK.class)
public class LatheFullTranslateEntity {
    private int id;
    private String productId;
    private String languageLang;
    private String fullSystemCnc;
    private String counterSpindlePresence;
    private String turretFasteningType;
    private String tailstockPresence;

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

    @Id
    @Column(name = "language_lang", nullable = false, insertable = true, updatable = true, length = 2)
    public String getLanguageLang() {
        return languageLang;
    }

    public void setLanguageLang(String languageLang) {
        this.languageLang = languageLang;
    }

    @Basic
    @Column(name = "fullSystemCNC", nullable = true, insertable = true, updatable = true, length = 255)
    public String getFullSystemCnc() {
        return fullSystemCnc;
    }

    public void setFullSystemCnc(String fullSystemCnc) {
        this.fullSystemCnc = fullSystemCnc;
    }

    @Basic
    @Column(name = "counterSpindlePresence", nullable = true, insertable = true, updatable = true, length = 255)
    public String getCounterSpindlePresence() {
        return counterSpindlePresence;
    }

    public void setCounterSpindlePresence(String counterSpindlePresence) {
        this.counterSpindlePresence = counterSpindlePresence;
    }

    @Basic
    @Column(name = "turretFasteningType", nullable = true, insertable = true, updatable = true, length = 255)
    public String getTurretFasteningType() {
        return turretFasteningType;
    }

    public void setTurretFasteningType(String turretFasteningType) {
        this.turretFasteningType = turretFasteningType;
    }

    @Basic
    @Column(name = "tailstockPresence", nullable = true, insertable = true, updatable = true, length = 255)
    public String getTailstockPresence() {
        return tailstockPresence;
    }

    public void setTailstockPresence(String tailstockPresence) {
        this.tailstockPresence = tailstockPresence;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LatheFullTranslateEntity that = (LatheFullTranslateEntity) o;

        if (id != that.id) return false;
        if (counterSpindlePresence != null ? !counterSpindlePresence.equals(that.counterSpindlePresence) : that.counterSpindlePresence != null)
            return false;
        if (fullSystemCnc != null ? !fullSystemCnc.equals(that.fullSystemCnc) : that.fullSystemCnc != null)
            return false;
        if (languageLang != null ? !languageLang.equals(that.languageLang) : that.languageLang != null) return false;
        if (productId != null ? !productId.equals(that.productId) : that.productId != null) return false;
        if (tailstockPresence != null ? !tailstockPresence.equals(that.tailstockPresence) : that.tailstockPresence != null)
            return false;
        if (turretFasteningType != null ? !turretFasteningType.equals(that.turretFasteningType) : that.turretFasteningType != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (productId != null ? productId.hashCode() : 0);
        result = 31 * result + (languageLang != null ? languageLang.hashCode() : 0);
        result = 31 * result + (fullSystemCnc != null ? fullSystemCnc.hashCode() : 0);
        result = 31 * result + (counterSpindlePresence != null ? counterSpindlePresence.hashCode() : 0);
        result = 31 * result + (turretFasteningType != null ? turretFasteningType.hashCode() : 0);
        result = 31 * result + (tailstockPresence != null ? tailstockPresence.hashCode() : 0);
        return result;
    }
}
