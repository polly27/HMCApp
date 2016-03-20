package com.springapp.mvc.dao;

import com.springapp.mvc.domain.MachineLocationFilter;
import com.springapp.mvc.domain.ProducerFilter;
import com.springapp.mvc.domain.SlidersFilter;
import com.springapp.mvc.domain.SystemCNCFilter;

import java.util.List;

public interface FiltersDAO {
    public List<ProducerFilter> listProducerFilter();
    public List<MachineLocationFilter> listMachineLocationFilter();
    public List<SystemCNCFilter> listSystemCNCFilter();
    public List<SlidersFilter> listSlidersFilter();
    public void renewProducerFilter();
    public void renewMachineLocationFilter();
    public void renewSystemCNCFilter();
    public void renewSlidersFilter();
}