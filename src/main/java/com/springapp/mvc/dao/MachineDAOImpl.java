package com.springapp.mvc.dao;

import com.springapp.mvc.domain.Machine;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MachineDAOImpl implements MachineDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @SuppressWarnings("unchecked")
    public List<Machine> listMachine() {
        return sessionFactory.getCurrentSession().createQuery("from Machine").list();
    }

    @SuppressWarnings("unchecked")
    public Machine getMachine(String productId) {
        Query query = sessionFactory.getCurrentSession().createQuery("from Machine where productId='" + productId + "'");
        return (Machine)query.uniqueResult();
    }

    @SuppressWarnings("unchecked")
    public void addMachines(String path) {
        sessionFactory.getCurrentSession()
                .createSQLQuery("LOAD DATA LOCAL INFILE :file INTO TABLE hmc.machines \n" +
                "FIELDS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\\n' IGNORE 1 ROWS;")
                .setString("file",path).executeUpdate();
    }
}