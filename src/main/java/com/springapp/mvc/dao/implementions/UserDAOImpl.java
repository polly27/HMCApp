package com.springapp.mvc.dao.implementions;

import com.springapp.mvc.dao.interfaces.UserDAO;
import com.springapp.mvc.domain.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @SuppressWarnings("unchecked")
    public User getUserByUsername(String username){
        List<User> users = sessionFactory.getCurrentSession()
                .createQuery("from User where username=?").setParameter(0,username).list();
        if (users.size() > 0) {
            return users.get(0);
        }
        return null;
    }

    @SuppressWarnings("unchecked")
    public User createNewAccount(String username, String password, String email, String role) {
        User user = new User();
        user.setUsername(username);
        user.setUserPassword(password);
        user.setEmail(email);
        user.setRole(role);
        sessionFactory.getCurrentSession().save(user);
        return user;
    }
}
