package com.clan.firdango.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by marvinyan on 5/6/2017.
 */
@Entity
public class Newsletter implements Serializable{
    private int id;
    private String subject;
    private String body;

    public Newsletter() {
        subject = "Firdango Newsletter";
    }

    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }
}
