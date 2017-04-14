package com.clan.firdango.dao;

import com.clan.firdango.entity.Movie;
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
public class MovieDAOImpl implements MovieDAO {
    // need to inject the session factory
    private final SessionFactory sessionFactory;

    @Autowired
    public MovieDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Movie> getFeatured() {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query
        Query<Movie> theQuery = currentSession.createQuery("from Movie order by release_date where release_date<CURDATE() limit 12", Movie.class);

        // execute and return the result list
        return theQuery.getResultList();
    }

}
