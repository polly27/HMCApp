package com.springapp.mvc.domain.lathe;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

public class LatheEntityPK implements Serializable {
    private int id;

    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String productId;

    @Column(name = "productId", nullable = false, insertable = true, updatable = true, length = 255)
    @Id
    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    private int latheFullId;

    @Column(name = "lathe_full_id", nullable = false, insertable = true, updatable = true)
    @Id
    public int getLatheFullId() {
        return latheFullId;
    }

    public void setLatheFullId(int latheFullId) {
        this.latheFullId = latheFullId;
    }

    private String latheFullProductId;

    @Column(name = "lathe_full_productId", nullable = false, insertable = true, updatable = true, length = 255)
    @Id
    public String getLatheFullProductId() {
        return latheFullProductId;
    }

    public void setLatheFullProductId(String latheFullProductId) {
        this.latheFullProductId = latheFullProductId;
    }

    private int latheTranslateId;

    @Column(name = "lathe_translate_id", nullable = false, insertable = true, updatable = true)
    @Id
    public int getLatheTranslateId() {
        return latheTranslateId;
    }

    public void setLatheTranslateId(int latheTranslateId) {
        this.latheTranslateId = latheTranslateId;
    }

    private String latheTranslateProductId;

    @Column(name = "lathe_translate_productId", nullable = false, insertable = true, updatable = true, length = 255)
    @Id
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

        LatheEntityPK that = (LatheEntityPK) o;

        if (id != that.id) return false;
        if (latheFullId != that.latheFullId) return false;
        if (latheTranslateId != that.latheTranslateId) return false;
        if (latheFullProductId != null ? !latheFullProductId.equals(that.latheFullProductId) : that.latheFullProductId != null)
            return false;
        if (latheTranslateProductId != null ? !latheTranslateProductId.equals(that.latheTranslateProductId) : that.latheTranslateProductId != null)
            return false;
        if (productId != null ? !productId.equals(that.productId) : that.productId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (productId != null ? productId.hashCode() : 0);
        result = 31 * result + latheFullId;
        result = 31 * result + (latheFullProductId != null ? latheFullProductId.hashCode() : 0);
        result = 31 * result + latheTranslateId;
        result = 31 * result + (latheTranslateProductId != null ? latheTranslateProductId.hashCode() : 0);
        return result;
    }
}
