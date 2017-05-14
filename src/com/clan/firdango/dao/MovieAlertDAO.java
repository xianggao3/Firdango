package com.clan.firdango.dao;

import com.clan.firdango.entity.MovieAlert;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by marvinyan on 5/14/2017.
 */
@Repository
public class MovieAlertDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public MovieAlertDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void saveAlert(MovieAlert alert) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.save(alert);
    }

    public List<MovieAlert> getAlertList(int userId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<MovieAlert> query = currentSession.createQuery("from MovieAlert where userId=:userId", MovieAlert.class);
        query.setParameter("userId", userId);
        return query.getResultList();
    }
}
