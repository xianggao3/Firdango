package com.clan.firdango.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by marvinyan on 4/27/2017.
 */
@Entity
@Table(name = "Reviews")
public class Review implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reviewId")
    private int reviewId;

    @Column(name = "userId")
    private String userId;

    @Column(name = "title")
    private String title;

    @Column(name = "body")
    private String body;

    @Column(name = "rating")
    private String rating;

    @Column(name = "timeOfReview")
    private String timeOfReview;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getTimeOfReview() {
        return timeOfReview;
    }

    public void setTimeOfReview(String timeOfReview) {
        this.timeOfReview = timeOfReview;
    }
}