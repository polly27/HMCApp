package com.springapp.mvc.service;

import com.springapp.mvc.domain.MachineLocationFilter;
import com.springapp.mvc.domain.ProducerFilter;
import com.springapp.mvc.domain.SlidersFilter;
import com.springapp.mvc.domain.SystemCNCFilter;

import java.util.List;

public interface FiltersService {
    public List<ProducerFilter> listProducerFilter();
    public List<MachineLocationFilter> listMachineLocationFilter();
    public List<SystemCNCFilter> listSystemCNCFilter();
    public List<SlidersFilter> listSlidersFilter();
    public void renewFilters();
}
