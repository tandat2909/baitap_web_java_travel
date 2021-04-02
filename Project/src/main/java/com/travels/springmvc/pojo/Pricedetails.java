package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "pricedetails")
public class Pricedetails implements Serializable {
    @Id
    @Column(name = "bookingID", nullable = false, length = 100)
    private String bookingId;
    @Id
    @Column(name = "ageID", nullable = false, length = 100)
    private String ageId;

    private int quantity;
    private int price;


    @ManyToOne
    @JoinColumn(name = "bookingID", referencedColumnName = "bookingID", nullable = false)
    private Booking booking;
    @ManyToOne
    @JoinColumn(name = "ageID", referencedColumnName = "ageID", nullable = false)
    private Ages ages;




    public String getBookingId() {
        return bookingId;
    }

    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }


    public String getAgeId() {
        return ageId;
    }

    public void setAgeId(String ageId) {
        this.ageId = ageId;
    }

    @Basic
    @Column(name = "quantity", nullable = false)
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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
        Pricedetails that = (Pricedetails) o;
        return quantity == that.quantity && price == that.price && Objects.equals(bookingId, that.bookingId) && Objects.equals(ageId, that.ageId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(bookingId, ageId, quantity, price);
    }


    public Booking getBooking() {
        return booking;
    }

    public void setBooking(Booking booking) {
        this.booking = booking;
    }


    public Ages getAges() {
        return ages;
    }

    public void setAges(Ages ages) {
        this.ages = ages;
    }
}
