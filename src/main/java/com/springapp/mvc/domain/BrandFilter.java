package com.springapp.mvc.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="brand_filter")
public class BrandFilter implements Serializable{
    @Id
    @Column(name = "brand")
    private String brand;

    @Column(name = "num")
    private int num;

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }
}
