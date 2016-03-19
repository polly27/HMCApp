package com.springapp.mvc.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="producer_filter", catalog = "hmc")
public class ProducerFilter implements Serializable{
    @Id
    @Column(name = "producer")
    private String producer;

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }
}
