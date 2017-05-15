package com.clan.firdango.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "cast")
public class Cast{
    @Id
    @Column(name = "favoriteId")
    private int favoriteId;
}
