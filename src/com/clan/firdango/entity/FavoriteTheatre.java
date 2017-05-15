package com.clan.firdango.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "favoritetheatres")
public class FavoriteTheatre {
    @Id
    @Column(name = "favoritetheatreid")
    private int favoritetheatreid;

    @Column(name = "theatreid")
    private int theatreid;

    @Column(name = "userid")
    private int userid;

    public int getFavoritetheatreid() {
        return favoritetheatreid;
    }

    public void setFavoritetheatreid(int favoritetheatreid) {
        this.favoritetheatreid = favoritetheatreid;
    }

    public int getTheatreid() {
        return theatreid;
    }

    public void setTheatreid(int theatreid) {
        this.theatreid = theatreid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }
}
