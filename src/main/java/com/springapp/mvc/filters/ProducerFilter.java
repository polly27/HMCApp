package com.springapp.mvc.filters;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="producer_filter", catalog = "hmc")
public class ProducerFilter {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "producer")
    private String producer;

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
