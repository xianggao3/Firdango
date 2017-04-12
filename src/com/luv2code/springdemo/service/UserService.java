package com.luv2code.springdemo.service;

import com.luv2code.springdemo.entity.User;

import java.util.List;

/**
 * Created by marvinyan on 2/6/2017.
 */
public interface UserService {
    List<User> getUsers();

    void saveUser(User user);

    User getUser(int id);

    void deleteUser(int id);
}
