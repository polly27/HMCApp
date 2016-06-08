package com.springapp.mvc.domain.lathe;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

public class LatheFullTranslateEntityPK implements Serializable {
    private int id;
    private String productId;
    private String languageLang;

    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "productId", nullable = false, insertable = true, updatable = true, length = 255)
    @Id
    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    @Column(name = "language_lang", nullable = false, insertable = true, updatable = true, length = 2)
    @Id
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

        LatheFullTranslateEntityPK that = (LatheFullTranslateEntityPK) o;

        if (id != that.id) return false;
        if (languageLang != null ? !languageLang.equals(that.languageLang) : that.languageLang != null) return false;
        if (productId != null ? !productId.equals(that.productId) : that.productId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (productId != null ? productId.hashCode() : 0);
        result = 31 * result + (languageLang != null ? languageLang.hashCode() : 0);
        return result;
    }
}
