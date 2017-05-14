package com.clan.firdango.dao;

import com.clan.firdango.entity.Showtime;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
