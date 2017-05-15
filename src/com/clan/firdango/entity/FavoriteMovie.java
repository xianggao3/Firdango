package com.clan.firdango.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by marvinyan on 4/12/2017.
 */
@Entity
@Table(name = "favoritemovies")
public class FavoriteMovie {
    @Id
    @Column(name = "favoriteId")
    private int favoriteId;

    @Column(name = "movieId")
    private int movieId;

    @Column(name = "userId")
    private int userId;

    public int getFavoriteId() {
        return favoriteId;
    }

    public void setFavoriteId(int favoriteId) {
        this.favoriteId = favoriteId;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
