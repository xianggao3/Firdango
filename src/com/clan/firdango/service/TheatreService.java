package com.clan.firdango.service;

import com.clan.firdango.dao.TheatreDAO;
import com.clan.firdango.entity.Movie;
import com.clan.firdango.entity.Theatre;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by marvinyan on 5/14/2017.
 */
@Service
public class TheatreService {
    private final TheatreDAO theatreDAO;

    @Autowired
    public TheatreService(TheatreDAO theatreDAO) {
        this.theatreDAO = theatreDAO;
    }

    @Transactional
    public Theatre getTheatre(int theatreId) {
        return theatreDAO.getTheatre(theatreId);
    }

    @Transactional
    public List<Theatre> getAllTheatres() {
        return theatreDAO.getAllTheatres();
    }


}
