package com.clan.firdango.entity;

import java.util.List;

/**
 * Created by xgao3 on 4/14/2017.
 */
public class FeaturedMovies {

    private List<Movie> featuredMovies;

    public List<Movie> getFeaturedMovies() {
        return featuredMovies;
    }

    public void setFeaturedMovies(List<Movie> featuredMovies) {
        this.featuredMovies = featuredMovies;
    }

    @Override
    public String toString() {

        return "0:"+featuredMovies.toString();
    }
}
