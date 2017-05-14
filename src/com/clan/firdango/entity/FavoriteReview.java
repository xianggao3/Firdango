package com.clan.firdango.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by numaer zaker
 */
@Entity
@Table(name = "favoritereviews")
public class FavoriteReview {
    @Id
    @Column(name = "favoriteReviewId")
    private int favoriteid;

    @Column(name = "reviewid")
    private int reviewid;

    @Column(name = "userid")
    private int userid;

    public int getFavoriteid() {
        return favoriteid;
    }

    public void setFavoriteid(int favoriteid) {
        this.favoriteid = favoriteid;
    }

    public int getReviewId() {
        return reviewid;
    }

    public void setReviewId(int id) {
        this.reviewid = id;
    }

    public int getUserId() {
        return userid;
    }

    public void setUserId(int userid) {
        this.userid = userid;
    }
}
