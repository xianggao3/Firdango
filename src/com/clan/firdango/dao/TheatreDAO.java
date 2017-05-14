package com.clan.firdango.dao;

import com.clan.firdango.entity.Movie;
import com.clan.firdango.entity.Theatre;
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

    public List<Theatre> getAllTheatres() {
        Session currentSession = sessionFactory.getCurrentSession();
        String q = "FROM Theatre ORDER BY id DESC";
        Query<Theatre> theQuery = currentSession.createQuery(q, Theatre.class);
        return theQuery.getResultList();
    }


}
