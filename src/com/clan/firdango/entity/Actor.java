package com.clan.firdango.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "actor")
public class Actor{
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "profilePath")
    private String profilePath;

    @Column(name = "birthday")
    private String birthday;

    @Column(name = "gender")
    private String gender;

    @Column(name = "placeOfBirth")
    private String placeOfBirth;

    @Column(name = "popularity")
    private String popularity;

    @Column(name = "biography")
    private String biography;

    @Column(name = "personId")
    private String personId;

    public String getName() { return name; }
    public String getProfilePath() { return profilePath; }
    public int getId() { return id; }
    public String getBirthday() { return birthday; }
    public String getGender() { return gender; }
    public String getPlaceOfBirth() { return placeOfBirth; }
    public String getPopularity() { return popularity; }
    public String getBiography() { return biography; }
    public String getPersonId() { return personId; }
}
