package com.clan.firdango.service;

import com.clan.firdango.dao.TicketDAO;
import com.clan.firdango.entity.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by marvinyan on 5/13/2017.
 */
@Service
public class TicketService {
    private final TicketDAO ticketDAO;

    @Autowired
    public TicketService(TicketDAO ticketDAO) {
        this.ticketDAO = ticketDAO;
    }

    @Transactional
    public void saveTicket(Ticket ticket) {
        ticketDAO.saveTicket(ticket);
    }
}
