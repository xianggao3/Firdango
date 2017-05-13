package com.clan.firdango.service;

import com.clan.firdango.dao.MovieDAO;
import com.clan.firdango.entity.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by xgao3 on 4/13/2017.
 */
@Service
public class MovieService {
    private final MovieDAO movieDAO;

    @Autowired
    public MovieService(MovieDAO movieDAO) {
        this.movieDAO = movieDAO;
    }

    @Transactional
    public List<Movie> getFeatured() {
        return movieDAO.getFeatured();
    }

    @Transactional
    public void saveMovie(Movie movie) {
        movieDAO.saveMovie(movie);
    }

    @Transactional
    public Movie getMovie(int id) {
        return movieDAO.getMovie(id);
    }

    @Transactional
    public void deleteMovie(int id) {
        movieDAO.deleteMovie(id);
    }

    @Transactional
    public List<Movie> getAllMovies() {
        return movieDAO.getAllMovies();
    }
}
