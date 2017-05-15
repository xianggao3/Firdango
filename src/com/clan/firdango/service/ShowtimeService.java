package com.clan.firdango.service;

import com.clan.firdango.dao.ShowtimeDAO;
import com.clan.firdango.entity.Showtime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by marvinyan on 5/14/2017.
 */
@Service
public class ShowtimeService {
    private final ShowtimeDAO showtimeDAO;

    @Autowired
    public ShowtimeService(ShowtimeDAO showtimeDAO) {
        this.showtimeDAO = showtimeDAO;
    }

    @Transactional
    public Showtime getShowtime(int showtimeId) {
        return showtimeDAO.getShowtime(showtimeId);
    }

    @Transactional
    public List<Showtime> getShowtimeByMovie(int mid) {
        return showtimeDAO.getShowtimeByMovie(mid);
    }


}
