package com.springapp.mvc.service.interfaces;

import com.springapp.mvc.domain.BrandFilter;
import com.springapp.mvc.domain.MachineLocationFilter;
import com.springapp.mvc.domain.SlidersFilter;
import com.springapp.mvc.domain.SystemCNCFilter;

import java.util.List;

public interface FiltersService {
    public List<BrandFilter> listBrandFilter();
    public List<MachineLocationFilter> listMachineLocationFilter();
    public List<SystemCNCFilter> listSystemCNCFilter();
    public List<SlidersFilter> listSlidersFilter();
    public void renewFilters();
}