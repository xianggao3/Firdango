package com.clan.firdango.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

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
    private int userId;

    @Column(name = "title")
    private String title;

    @Column(name = "body")
    private String body;

    @Column(name = "rating")
    private String rating;

    @Column(name = "timeOfReview")
    private Timestamp timeOfReview;

    @Column(name = "movieId")
    private int movieId;

    @Column(name = "userName")
    private String userName;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
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

    public Timestamp getTimeOfReview() {
        return timeOfReview;
    }

    public void setTimeOfReview(Timestamp timeOfReview) {
        this.timeOfReview = timeOfReview;
    }

    public int getMovieId() {return movieId;}

    public void setMovieId(int movieId) {this.movieId = movieId;}

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getReviewId() {
        return reviewId;
    }

    public void setReviewId(int reviewId) {
        this.reviewId = reviewId;
    }
}