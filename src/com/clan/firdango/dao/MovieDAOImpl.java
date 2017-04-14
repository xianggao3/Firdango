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
        String q = "FROM Movie where releaseDate < current_date and poster is not null ORDER BY releaseDate DESC";
        Query<Movie> theQuery = currentSession.createQuery(q, Movie.class);
        theQuery.setMaxResults(12);

        // execute and return the result list
        System.out.println(theQuery.getResultList());
        return theQuery.getResultList();

    }

    @Override
    public Movie getMovie(int id){
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(Movie.class, id);
    }

    @Override
    public void deleteMovie(int id){
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("delete from Movie where id = :id");
        query.setParameter("id", id);
        query.executeUpdate();
    }
    @Override
    public void saveMovie(Movie movie) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(movie); // id empty ? insert : update
    }
}
