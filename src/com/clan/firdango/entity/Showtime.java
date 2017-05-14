package com.clan.firdango.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by marvinyan on 5/14/2017.
 */
@Entity
@Table(name = "Showtimes")
public class Showtime {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "theatreId")
    private int theatreId;

    @Column(name = "movieId")
    private int movieId;

    @Column(name = "showtime")
    private String showtime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTheatreId() {
        return theatreId;
    }

    public void setTheatreId(int theatreId) {
        this.theatreId = theatreId;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getShowtime() {
        return showtime;
    }

    public void setShowtime(String showtime) {
        this.showtime = showtime;
    }
}
