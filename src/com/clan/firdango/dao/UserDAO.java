package com.clan.firdango.dao;

import com.clan.firdango.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by marvinyan on 2/6/2017.
 */
@Repository
public class UserDAO {
    // need to inject the session factory
    private final SessionFactory sessionFactory;

    @Autowired
    public UserDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<User> getUsers() {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<User> theQuery = currentSession.createQuery("from User order by name", User.class);
        return theQuery.getResultList();
    }

    public void saveUser(User user) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(user); // id empty ? insert : update
    }

    public User getUser(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(User.class, id);
    }

    public User getUserByEmail(String email){
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("from User where email = :email");
        query.setParameter("email", email);
        return (User) query.uniqueResult();
    }

    public void deleteUser(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("delete from User where id = :id");
        query.setParameter("id", id);
        query.executeUpdate();
    }
}
