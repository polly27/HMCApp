package com.springapp.mvc.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="producer_filter")
public class ProducerFilter implements Serializable{
    @Id
    @Column(name = "producer")
    private String producer;

    @Column(name = "num")
    private int num;

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }
}
