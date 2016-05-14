package com.springapp.mvc.service.interfaces;

import com.springapp.mvc.domain.User;

public interface UserService {
    public User getUserByUsername(String username);
    public User createNewAccount(String username, String password, String email, String role);
}
