package com.clan.firdango.dao;

import java.util.List;

import com.clan.firdango.entity.Movie;

/**
 * Created by marvinyan on 2/6/2017.
 */
public interface MovieDAO {
    List<Movie> getFeatured();
    Movie getMovie(int id);
    void deleteMovie(int id);
    void saveMovie(Movie movie) ;
}
