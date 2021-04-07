package com.travels.springmvc.pojo;

import com.travels.springmvc.Annotation.GeneratedValueUUID;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Objects;

@Entity
@Table(name = "ages")
public class Ages implements Serializable {
    @Id
    @Column(name = "ageID", nullable = false, length = 100)
    private String ageId;
    private String name;

    @OneToMany(mappedBy = "ages")
    private Collection<Pricedetails> pricedetails;
    @OneToMany(mappedBy = "ages")
    private Collection<Ticket> tickets;
    @OneToMany(mappedBy = "ages")
    private Collection<Tourprices> tourprices;



    public String getAgeId() {
        return ageId;
    }

    public void setAgeId(String ageId) {
        this.ageId = ageId;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 50)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Ages ages = (Ages) o;
        return Objects.equals(ageId, ages.ageId) && Objects.equals(name, ages.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ageId, name);
    }

    public Collection<Pricedetails> getPricedetails() {
        return pricedetails;
    }

    public void setPricedetails(Collection<Pricedetails> pricedetails) {
        this.pricedetails = pricedetails;
    }

    public Collection<Ticket> getTickets() {
        return tickets;
    }

    public void setTickets(Collection<Ticket> tickets) {
        this.tickets = tickets;
    }

    public Collection<Tourprices> getTourprices() {
        return tourprices;
    }

    public void setTourprices(Collection<Tourprices> tourprices) {
        this.tourprices = tourprices;
    }
}
