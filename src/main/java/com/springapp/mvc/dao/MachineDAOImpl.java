package com.springapp.mvc.dao;

import com.springapp.mvc.domain.Machine;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
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

    @SuppressWarnings("unchecked")
    public List<Machine> listFiltered(String[] brandArr, int[] yearRangeArr, int[] priceRangeArr,
            String[] locationArr, String[] cncArr, int[] xMotionRangeArr, int[] yMotionRangeArr,
            int[] zMotionRangeArr,int[] xTableRangeArr, int[] yTableRangeArr) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Machine.class);
        if(brandArr != null) {
            criteria.add(Restrictions.in("producer", brandArr));
        }
        if(yearRangeArr != null) {
            criteria.add(Restrictions.between("year", yearRangeArr[0], yearRangeArr[1]));
        }
        if(priceRangeArr != null) {
            criteria.add(Restrictions.between("cost", priceRangeArr[0], priceRangeArr[1]));
        }
        if(locationArr != null) {
            criteria.add(Restrictions.in("machineLocation", locationArr));
        }
        if(cncArr != null) {
            criteria.add(Restrictions.in("systemCNC", cncArr));
        }
        if(xMotionRangeArr != null) {
            criteria.add(Restrictions.between("xMotion", xMotionRangeArr[0], xMotionRangeArr[1]));
        }
        if(yMotionRangeArr != null) {
            criteria.add(Restrictions.between("yMotion", yMotionRangeArr[0], yMotionRangeArr[1]));
        }
        if(zMotionRangeArr != null) {
            criteria.add(Restrictions.between("zMotion", zMotionRangeArr[0], zMotionRangeArr[1]));
        }
        if(xTableRangeArr != null) {
            criteria.add(Restrictions.between("xTableSize", xTableRangeArr[0], xTableRangeArr[1]));
        }
        if(yTableRangeArr != null) {
            criteria.add(Restrictions.between("yTableSize", yTableRangeArr[0], yTableRangeArr[1]));
        }
        return criteria.list();
    }
}