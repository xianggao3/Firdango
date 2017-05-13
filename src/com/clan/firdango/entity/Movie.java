package com.clan.firdango.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by marvinyan on 4/12/2017.
 */
@Entity
@Table(name = "movies")
public class Movie {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "title")
    private String title;

    @Column(name = "releaseDate")
    private String release_date;

    @Column(name = "genre")
    private String genre;

    @Column(name = "runtime")
    private String runtime;

    @Column(name = "poster")
    private String poster_path;

    @Column(name = "backdrop")
    private String backdrop;

    @Column(name = "trailer")
    private String trailer;

    @Column(name = "imdbId")
    private String imdbId;

    @Column(name = "revenue")
    private String revenue;

    @Column(name = "budget")
    private String budget;

    @Column(name = "overview")
    private String overview;

    //@Column(name = "status")
    //private String status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getReleaseDate() {
        return release_date;
    }

    public void setReleaseDate(String releaseDate) {
        this.release_date = releaseDate;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getRuntime() {
        return runtime;
    }

    public void setRuntime(String runtime) {
        this.runtime = runtime;
    }

    public String getPoster() {
        return poster_path;
    }

    public void setPoster(String poster) {
        this.poster_path = poster;
    }

    public String getBackdrop() {
        return backdrop;
    }

    public void setBackdrop(String backdrop) {
        this.backdrop = backdrop;
    }

    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }

    public String getImdbId() {
        return imdbId;
    }

    public void setImdbId(String imdbId) {
        this.imdbId = imdbId;
    }

    public String getRevenue() {
        return revenue;
    }

    public void setRevenue(String revenue) {
        this.revenue = revenue;
    }

    public String getBudget() {
        return budget;
    }

    public void setBudget(String budget) {
        this.budget = budget;
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    /*public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }*/

    public String toString() {
        return "Movie{" +
                "id='" + id + '\'' +
                ", title='" + title + '\'' +
                ", release='" + release_date + "}";
    }
}
