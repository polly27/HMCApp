package com.springapp.mvc.dao.interfaces;

import com.springapp.mvc.domain.BrandFilter;
import com.springapp.mvc.domain.MachineLocationFilter;
import com.springapp.mvc.domain.SlidersFilter;
import com.springapp.mvc.domain.SystemCNCFilter;

import java.util.List;

public interface FiltersDAO {
    public List<BrandFilter> listBrandFilter();
    public List<MachineLocationFilter> listMachineLocationFilter();
    public List<SystemCNCFilter> listSystemCNCFilter();
    public List<SlidersFilter> listSlidersFilter();
    public void renewBrandFilter();
    public void renewMachineLocationFilter();
    public void renewSystemCNCFilter();
    public void renewSlidersFilter();
}
