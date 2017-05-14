package com.clan.firdango.dao;

import com.clan.firdango.entity.Ticket;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
