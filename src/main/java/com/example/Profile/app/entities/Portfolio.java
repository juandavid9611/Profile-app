package com.example.Profile.app.entities;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Portfolio {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Integer idportfolio;
    private String description;
    private String image_url;
    private String title;
    private String twitter_user_name;

    public Integer getIdportfolio() {
        return idportfolio;
    }

    public void setIdportfolio(Integer idportfolio) {
        this.idportfolio = idportfolio;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTwitter_user_name() {
        return twitter_user_name;
    }

    public void setTwitter_user_name(String twitter_use_name) {
        this.twitter_user_name = twitter_use_name;
    }
}
