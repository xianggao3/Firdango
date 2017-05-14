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
    @Column(name = "favoriteid")
    private int favoriteid;

    @Column(name = "movieid")
    private int movieid;

    @Column(name = "userid")
    private int userid;

    public int getFavoriteid() {
        return favoriteid;
    }

    public void setFavoriteid(int favoriteid) {
        this.favoriteid = favoriteid;
    }

    public int getMovieid() {
        return movieid;
    }

    public void setMovieid(int movieid) {
        this.movieid = movieid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }
}
