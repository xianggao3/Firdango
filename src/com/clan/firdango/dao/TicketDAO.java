package com.clan.firdango.dao;

import com.clan.firdango.entity.Ticket;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by marvinyan on 5/13/2017.
 */
@Repository
public class TicketDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public TicketDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void saveTicket(Ticket ticket) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.save(ticket);
    }

    public List<Ticket> getTicketsByUser(int userId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Ticket> query = currentSession.createQuery("from Ticket where userId = :userId", Ticket.class);
        query.setParameter("userId", userId);
        return query.getResultList();
    }
}
