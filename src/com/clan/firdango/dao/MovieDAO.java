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
public class MovieDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public MovieDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Movie> getFeatured() {
        Session currentSession = sessionFactory.getCurrentSession();

        String q = "FROM Movie where release_date < current_date and poster_path is not null ORDER BY release_date DESC";
        Query<Movie> theQuery = currentSession.createQuery(q, Movie.class);
        theQuery.setMaxResults(12);

        System.out.println(theQuery.getResultList());
        return theQuery.getResultList();
    }

    public Movie getMovie(int id){
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(Movie.class, id);
    }

    public void deleteMovie(int id){
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("delete from Movie where id = :id");
        query.setParameter("id", id);
        query.executeUpdate();
    }

    public void saveMovie(Movie movie) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(movie); // id empty ? insert : update
    }

    public List<Movie> getAllMovies() {
        Session currentSession = sessionFactory.getCurrentSession();
        String q = "FROM Movie ORDER BY id ASC";
        Query<Movie> theQuery = currentSession.createQuery(q, Movie.class);
        return theQuery.getResultList();
    }
}
