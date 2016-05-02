package com.springapp.mvc.dao.implementions;

import com.springapp.mvc.dao.interfaces.AdminDataDAO;
import com.springapp.mvc.domain.AdminData;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AdminDataDAOImpl implements AdminDataDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @SuppressWarnings("unchecked")
    public AdminData getAdminData() {
        List<AdminData> list = sessionFactory.getCurrentSession().createQuery("from AdminData where num=1").list();
        if(list.size() != 0)
            return list.get(0);
        return null;
    }

    public void renewAdminData(String email) {
        AdminData adminData = new AdminData();
        adminData.setNum(1);
        adminData.setEmail(email);
        sessionFactory.getCurrentSession().saveOrUpdate(adminData);
    }
}
