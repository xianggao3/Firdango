package com.clan.firdango.dao;

import com.clan.firdango.entity.FavoriteMovie;
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

    public Movie getMovie(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(Movie.class, id);
    }

    public void deleteMovie(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("delete from Movie where id = :id");
        query.setParameter("id", id);
        query.executeUpdate();
    }

    public void saveMovie(Movie movie) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(movie); // id empty ? insert : update
    }

    public int favMovieStatus(int userid, int movieid) {
        Session currentSession = sessionFactory.getCurrentSession();
        String q = "FROM FavoriteMovie where userid = :uid and movieid = :mid";
        Query query = currentSession.createQuery(q);
        query.setParameter("uid", userid);
        query.setParameter("mid", movieid);
        System.out.println(query.getResultList());
        return query.getResultList().size();

    }

    public void addToFavList(FavoriteMovie fm) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(fm);
    }

    public void removeFromFavList(int mid, int uid) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("delete from FavoriteMovie where movieid = :mid and userid=:uid");
        query.setParameter("mid", mid);
        query.setParameter("uid", uid);
        query.executeUpdate();
    }

    public List<Movie> getAllMovies() {
        Session currentSession = sessionFactory.getCurrentSession();
        String q = "FROM Movie ORDER BY id DESC";
        Query<Movie> theQuery = currentSession.createQuery(q, Movie.class);
        return theQuery.getResultList();
    }

    public List<Movie> getGenreMovie(String genre) {
        Session currentSession = sessionFactory.getCurrentSession();
        String q = "FROM Movie where release_date < current_date and poster_path is not null and genre =:genre ORDER BY release_date DESC";
        Query<Movie> query = currentSession.createQuery(q, Movie.class);
        query.setParameter("genre", genre);
        query.setMaxResults(12);
        return query.getResultList();
    }
    public List<Movie> getSoonGenreMovie(String genre) {
        Session currentSession = sessionFactory.getCurrentSession();
        String q = "FROM Movie where release_date > current_date and poster_path is not null and genre =:genre ORDER BY release_date ASC";
        Query<Movie> query = currentSession.createQuery(q, Movie.class);
        query.setParameter("genre", genre);
        query.setMaxResults(12);
        return query.getResultList();
    }

    public List<Movie> getComingSoonMovie() {
        Session currentSession = sessionFactory.getCurrentSession();
        String q = "FROM Movie where release_date > current_date  and poster_path is not null ORDER BY release_date ASC";
        Query<Movie> query = currentSession.createQuery(q, Movie.class);
        query.setMaxResults(12);
        return query.getResultList();
    }

    public List<Movie> getRevenueMovies() {
        Session currentSession = sessionFactory.getCurrentSession();
        String q = "FROM Movie where release_date < current_date and poster_path is not null  ORDER BY revenue  DESC";
        Query<Movie> query = currentSession.createQuery(q, Movie.class);
        query.setMaxResults(50);
        return  query.getResultList();
    }
}

