package com.springapp.mvc.service;

import com.springapp.mvc.dao.FiltersDAO;
import com.springapp.mvc.domain.MachineLocationFilter;
import com.springapp.mvc.domain.ProducerFilter;
import com.springapp.mvc.domain.SlidersFilter;
import com.springapp.mvc.domain.SystemCNCFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class FiltersServiceImpl implements FiltersService {
    @Autowired
    private FiltersDAO filtersDAO;

    @Transactional
    public List<ProducerFilter> listProducerFilter() {
        return filtersDAO.listProducerFilter();
    }

    @Transactional
    public List<MachineLocationFilter> listMachineLocationFilter(){ return filtersDAO.listMachineLocationFilter(); }

    @Transactional
    public List<SystemCNCFilter> listSystemCNCFilter(){ return filtersDAO.listSystemCNCFilter(); }

    @Transactional
    public List<SlidersFilter> listSlidersFilter() { return filtersDAO.listSlidersFilter(); }

    @Transactional
    public void renewFilters() {
        filtersDAO.renewProducerFilter();
        filtersDAO.renewMachineLocationFilter();
        filtersDAO.renewSystemCNCFilter();
        filtersDAO.renewSlidersFilter();
    }
}