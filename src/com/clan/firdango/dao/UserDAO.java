package com.clan.firdango.dao;

import com.clan.firdango.entity.User;

import java.util.List;

/**
 * Created by marvinyan on 2/6/2017.
 */
public interface UserDAO {
    List<User> getUsers();

    void saveUser(User user);

    User getUser(int id);

    User getUserByEmail(String email);

    void deleteUser(int id);
}
