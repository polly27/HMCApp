package com.springapp.mvc.dao.implementions;

import com.springapp.mvc.dao.interfaces.LatheDAO;
import com.springapp.mvc.domain.lathe.LatheFullEntity;
import com.springapp.mvc.domain.lathe.LatheLangFullEntity;
import com.springapp.mvc.domain.lathe.LatheLangShortEntity;
import com.springapp.mvc.domain.lathe.LatheShortEntity;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LatheDAOImpl implements LatheDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @SuppressWarnings("unchecked")
    public void addLatheShort(LatheShortEntity latheShortEntity) {
        sessionFactory.getCurrentSession().saveOrUpdate(latheShortEntity);
    }

    @SuppressWarnings("unchecked")
    public void addLatheFull(LatheFullEntity latheFullEntity) {
        sessionFactory.getCurrentSession().saveOrUpdate(latheFullEntity);
    }

    @SuppressWarnings("unchecked")
    public void addLatheLangShort(LatheLangShortEntity latheLangShortEntity) {
        sessionFactory.getCurrentSession().saveOrUpdate(latheLangShortEntity);
    }

    @SuppressWarnings("unchecked")
    public void addLatheLangFull(LatheLangFullEntity latheLangFullEntity) {
        sessionFactory.getCurrentSession().saveOrUpdate(latheLangFullEntity);
    }

}