package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "tourprices")
public class Tourprices implements Serializable {
    @Id
    @Column(name = "ageID", nullable = false, length = 100)
    private String ageId;
    @Id
    @Column(name = "tourID", nullable = false, length = 100)
    private String tourId;

    private int price;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ageID", nullable = false)
    private Ages ages;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tourID", nullable = false)
    private Tour tour;




    public String getAgeId() {
        return ageId;
    }

    public void setAgeId(String ageId) {
        this.ageId = ageId;
    }


    public String getTourId() {
        return tourId;
    }

    public void setTourId(String tourId) {
        this.tourId = tourId;
    }

    @Basic
    @Column(name = "price", nullable = false, precision = 0)
    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Tourprices that = (Tourprices) o;
        return price == that.price && Objects.equals(ageId, that.ageId) && Objects.equals(tourId, that.tourId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ageId, tourId, price);
    }


    public Ages getAges() {
        return ages;
    }

    public void setAges(Ages ages) {
        this.ages = ages;
    }


    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }

    @Override
    public String toString() {
        return "Tourprices{" +
                "ageId='" + ageId + '\'' +
                ", tourId='" + tourId + '\'' +
                ", price=" + price +
                ", ages=" + ages.getAgeId() +
                ", tour=" + tour.getTourId() +
                '}';
    }
}
