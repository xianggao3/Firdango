package springCode.dao;

import springCode.entity.User;

import java.util.List;

/**
 * Created by marvinyan on 2/6/2017.
 */
public interface UserDAO {
    List<User> getUsers();

    void saveUser(User user);

    User getUser(int id);

    void deleteUser(int id);
}
