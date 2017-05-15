package com.clan.firdango.dao;

import com.clan.firdango.entity.Showtime;
import com.clan.firdango.entity.User;
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
public class ShowtimeDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public ShowtimeDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Showtime getShowtime(int id){
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(Showtime.class, id);
    }

    public List<Showtime> getShowtimeByMovie(int movieId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Showtime> query = currentSession.createQuery("from Showtime where movieId = :movieId", Showtime.class);
        query.setParameter("movieId", movieId);
        return query.getResultList();
    }
}
