package com.springapp.mvc.dao.interfaces;

import com.springapp.mvc.domain.User;

public interface UserDAO {
    public User getUserByUsername(String username);
    public User createNewAccount(String username, String password, String email, String role);
}
