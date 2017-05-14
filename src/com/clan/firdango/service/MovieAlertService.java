package com.clan.firdango.service;

import com.clan.firdango.dao.MovieAlertDAO;
import com.clan.firdango.entity.Movie;
import com.clan.firdango.entity.MovieAlert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by marvinyan on 5/14/2017.
 */
@Service
public class MovieAlertService {
    private final MovieAlertDAO movieAlertDAO;
    private final MovieService movieService;

    @Autowired
    public MovieAlertService(MovieAlertDAO movieAlertDAO, MovieService movieService) {
        this.movieAlertDAO = movieAlertDAO;
        this.movieService = movieService;
    }

    @Transactional
    public void saveAlert(MovieAlert alert) {
        movieAlertDAO.saveAlert(alert);
    }

    @Transactional
    public List<Movie> getAlertList(int userId) {
        List<MovieAlert> alerts = movieAlertDAO.getAlertList(userId);
        List<Movie> movies = new ArrayList<>();
        for (MovieAlert a : alerts) {
            movies.add(movieService.getMovie(a.getMovieId()));
        }
        return movies;
    }
}
