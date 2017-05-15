package com.clan.firdango.service;

import com.clan.firdango.dao.MovieDAO;
import com.clan.firdango.entity.FavoriteMovie;
import com.clan.firdango.entity.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
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

    @Transactional
    public int favMovieStatus(int userid, int movieid) {
        return movieDAO.favMovieStatus(userid,movieid);
    }

    @Transactional
    public void addToFavList(FavoriteMovie fm) {
         movieDAO.addToFavList(fm);
    }

    @Transactional
    public void removeFromFavList(int mid, int uid) {
         movieDAO.removeFromFavList(mid, uid);
    }

    @Transactional
    public  List<Movie> getGenreMovie(String genre) { return movieDAO.getGenreMovie(genre);    }

    @Transactional
    public  List<Movie> getSoonGenreMovie(String genre) { return movieDAO.getSoonGenreMovie(genre);    }

    @Transactional
    public  List<Movie> getComingSoonMovie() { return movieDAO.getComingSoonMovie();    }

    @Transactional
    public  List<Movie> getRevenueMovies() {
        return movieDAO.getRevenueMovies();
    }

    @Transactional
    public List<Movie> getFavoriteMovies(int userId) {
        List<FavoriteMovie> fm = movieDAO.getFavoriteMovies(userId);
        List<Movie> movies = new ArrayList<>();
        for (FavoriteMovie fav : fm) {
            movies.add(getMovie(fav.getMovieId()));
        }
        return movies;
    }
    @Transactional
    public long getNumMovieRatings(int id) {
        return movieDAO.getNumMovieRatings(id);
    }
    @Transactional
    public double getAvgMovieRating(int id) {
        return movieDAO.getAvgMovieRating(id);
    }
}
