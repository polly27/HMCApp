package com.springapp.mvc.dao.implementions;

import com.springapp.mvc.dao.interfaces.LatheDAO;
import com.springapp.mvc.domain.lathe.LatheEntity;
import com.springapp.mvc.domain.lathe.LatheFullEntity;
import com.springapp.mvc.domain.lathe.LatheFullTranslateEntity;
import com.springapp.mvc.domain.lathe.LatheTranslateEntity;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LatheDAOImpl implements LatheDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @SuppressWarnings("unchecked")
    public List<LatheEntity> listLatheEntity() {
        return sessionFactory.getCurrentSession().createQuery("from LatheEntity ").list();
    }

    @SuppressWarnings("unchecked")
    public List<LatheFullEntity> listLatheFullEntity() {
        return sessionFactory.getCurrentSession().createQuery("from LatheFullEntity ").list();
    }

    @SuppressWarnings("unchecked")
    public List<LatheFullTranslateEntity> listLatheFullTranslateEntity() {
        return sessionFactory.getCurrentSession().createQuery("from LatheFullTranslateEntity ").list();
    }

    @SuppressWarnings("unchecked")
    public List<LatheTranslateEntity> listLatheTranslateEntity() {
        return sessionFactory.getCurrentSession().createQuery("from LatheTranslateEntity ").list();
    }
}