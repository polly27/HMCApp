package com.springapp.mvc.dao.implementions;

import com.springapp.mvc.dao.interfaces.MachineOrderDAO;
import com.springapp.mvc.domain.MachineOrder;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MachineOrderDAOImpl implements MachineOrderDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @SuppressWarnings("unchecked")
    public List<MachineOrder> listMachineOrder() {
        return sessionFactory.getCurrentSession().createQuery("from MachineOrder").list();
    }

    @SuppressWarnings("unchecked")
    public void addMachineOrder(MachineOrder machineOrder) {
        sessionFactory.getCurrentSession().saveOrUpdate(machineOrder);
    }

}