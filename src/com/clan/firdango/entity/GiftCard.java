package com.clan.firdango.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by marvinyan on 5/12/2017.
 */
@Entity
@Table(name = "GiftCards")
public class GiftCard {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "balance")
    private double balance;

    @Column(name = "gcCode")
    private String gcCode;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public String getGcCode() {
        return gcCode;
    }

    public void setGcCode(String gcCode) {
        this.gcCode = gcCode;
    }
}
