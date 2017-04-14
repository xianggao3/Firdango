package com.clan.firdango.dao;

import com.clan.firdango.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.TypedQuery;
import java.util.List;

/**
 * Created by marvinyan on 2/6/2017.
 */
@Repository
public class UserDAOImpl implements UserDAO {
    // need to inject the session factory
    private final SessionFactory sessionFactory;

    @Autowired
    public UserDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<User> getUsers() {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query
        Query<User> theQuery = currentSession.createQuery("from User order by  name", User.class);

        // execute and return the result list
        return theQuery.getResultList();
    }

    @Override
    public void saveUser(User user) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(user); // id empty ? insert : update
    }

    @Override
    public User getUser(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(User.class, id);
    }

    @Override
    public User getUserByEmail(String email){
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("from User where email = :email");
        query.setParameter("email", email);
        return (User) query.uniqueResult();
    }


    @Override
    public void deleteUser(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("delete from User where id = :id");
        query.setParameter("id", id);
        query.executeUpdate();
    }
}
