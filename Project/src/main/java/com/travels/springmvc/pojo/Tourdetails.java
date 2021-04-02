package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "tourdetails")
public class Tourdetails implements Serializable {
    @Id
    private String tourID;
    private String contents;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tourID")
    private Tour tour;


    @Basic
    @Column(name = "contents", nullable = true, length = 2000)
    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Tourdetails that = (Tourdetails) o;
        return Objects.equals(tourID, that.tourID) && Objects.equals(contents, that.contents);
    }

    @Override
    public int hashCode() {
        return Objects.hash( tourID,contents);
    }

    public String getTourID() {
        return tourID;
    }

    public void setTourID(String tourID) {
        this.tourID = tourID;
    }

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }
}
