package com.clan.firdango.dao;

import com.clan.firdango.entity.Theatre;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by marvinyan on 5/14/2017.
 */
@Repository
public class TheatreDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public TheatreDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Theatre getTheatre(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(Theatre.class, id);
    }
}
