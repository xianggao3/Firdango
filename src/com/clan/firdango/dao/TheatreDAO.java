package com.clan.firdango.dao;

import com.clan.firdango.entity.FavoriteTheatre;
import com.clan.firdango.entity.Movie;
import com.clan.firdango.entity.Theatre;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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

    @Transactional
    public int favTheatreStatus(int id, int id1) {
        Session currentSession = sessionFactory.getCurrentSession();
        String q = "FROM FavoriteTheatre where userid = :uid and theatreid = :mid";
        Query query = currentSession.createQuery(q);
        query.setParameter("uid", id);
        query.setParameter("mid",id1);
        System.out.println(query.getResultList());
        return query.getResultList().size();
    }

    @Transactional
    public void addToFavList(FavoriteTheatre fm) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(fm);
    }

    @Transactional
    public void removeFromFavList(int id, int id1) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("delete from FavoriteTheatre where theatreid = :mid and userid=:uid");
        query.setParameter("mid", id);
        query.setParameter("uid",id1);
        query.executeUpdate();
    }
}
