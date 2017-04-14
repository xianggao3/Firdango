package com.clan.firdango.service;

import com.clan.firdango.entity.Movie;

import java.util.List;

/**
 * Created by marvinyan on 2/6/2017.
 */
public interface MovieService {
    List<Movie> getFeatured();
    void saveMovie(Movie movie);
    Movie getMovie(int id);
    void deleteMovie(int id);
}
