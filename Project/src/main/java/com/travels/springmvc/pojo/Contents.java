package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity()
@Table(name = "contents")
public class Contents implements Serializable {

    @Id
    @Column(name = "contentID")
    private String contentId;

    @Column(name = "content")
    private String content;

    @Column(name = "Date")
    private Date date;

    @Column(name = "tourID")
    @Basic
    private String tourID;

    @Column(name = "landMarkID")
    @Basic
    private String landMarkID;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tourID",updatable = false,insertable = false)
    Tour tour;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "landMarkID",updatable = false,insertable = false)
    Landmarks landmark;


    public String getContentId() {
        return contentId;
    }

    public void setContentId(String contentId) {
        this.contentId = contentId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTourID() {
        return tourID;
    }

    public void setTourID(String tourID) {
        this.tourID = tourID;
    }

    public String getLandMarkID() {
        return landMarkID;
    }

    public void setLandMarkID(String landMarkID) {
        this.landMarkID = landMarkID;
    }

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }

    public Landmarks getLandmark() {
        return landmark;
    }

    public void setLandmark(Landmarks landmark) {
        this.landmark = landmark;
    }

    @Override
    public String toString() {
        return "Contents{" +
                "contentId='" + contentId + '\'' +
                ", content='" + content + '\'' +
                ", date=" + date +
                '}';
    }
}
