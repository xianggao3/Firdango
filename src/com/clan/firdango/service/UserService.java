package com.clan.firdango.service;

import com.clan.firdango.entity.User;

import java.util.List;

/**
 * Created by marvinyan on 2/6/2017.
 */
public interface UserService {
    List<User> getUsers();

    void saveUser(User user);

    User getUserByEmail(String email);

    User getUser(int id);

    void deleteUser(int id);
}
