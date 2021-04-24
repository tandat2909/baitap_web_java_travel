package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "bookingdetails")
public class Bookingdetails implements Serializable {

    @Id
    @GeneratedValue
    private String bookingId;

    private int seats;
    private Timestamp departureDay;

    @OneToOne
    @JoinColumn(name = "bookingID" , nullable = false)
    private Booking booking;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tourID" , nullable = false)
    private Tour tour;


    public String getBookingId() {
        return bookingId;
    }

    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }


    @Basic
    @Column(name = "seats", nullable = false)
    public int getSeats() {
        return seats;
    }

    public void setSeats(int seats) {
        this.seats = seats;
    }

    @Basic
    @Column(name = "DepartureDay", nullable = false)
    public Timestamp getDepartureDay() {
        return departureDay;
    }

    public void setDepartureDay(Timestamp departureDay) {
        this.departureDay = departureDay;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Bookingdetails that = (Bookingdetails) o;
        return seats == that.seats && Objects.equals(bookingId, that.bookingId) && Objects.equals(departureDay, that.departureDay);
    }

    @Override
    public int hashCode() {
        return Objects.hash(bookingId, seats, departureDay);
    }


    public Booking getBooking() {
        return booking;
    }

    public void setBooking(Booking booking) {
        this.booking = booking;
    }


    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }
}
