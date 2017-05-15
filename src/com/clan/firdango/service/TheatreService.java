package com.clan.firdango.service;

import com.clan.firdango.dao.TheatreDAO;
import com.clan.firdango.entity.FavoriteTheatre;
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

    @Transactional
    public List<Theatre> getNearbyTheatres(int zip) { return theatreDAO.getNearbyTheatres(zip);}

    public int favTheatreStatus(int id, int id1) {
        return theatreDAO.favTheatreStatus(id, id1);
    }

    public void addToFavList(FavoriteTheatre fm) {
        theatreDAO.addToFavList(fm);
    }

    public void removeFromFavList(int id, int id1) {
        theatreDAO.removeFromFavList(id, id1);
    }
}
