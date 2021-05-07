package com.travels.springmvc.pojo;



import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;

@Entity
@Table(name = "tour")
public class Tour implements Serializable {
    @Id
    @Column(name = "tourID", nullable = false, length = 100)
    private String tourId;
    private String tourName;
    private String vehicle;
    private BigDecimal price;
    private Date startDay;
    private int maxseats;
    private Date endDay;

    @Column(name = "content")
    private String content;


    @OneToMany(mappedBy = "tour")
    private Collection<Bookingdetails> bookingdetails;

    @OneToMany(mappedBy = "tour")
    private List<Contents> contents;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "diadiemdi",
            joinColumns = {@JoinColumn(name = "tour_tourID")},
            inverseJoinColumns = {@JoinColumn(name = "landMarkID")}
    )
    private Set<Landmarks> landmarkss = new HashSet<>();

    public Set<Landmarks> getLandmarkss() {
        return landmarkss;
    }

    public void setLandmarkss(Set<Landmarks> landmarkss) {
        this.landmarkss = landmarkss;
    }

    @OneToMany(mappedBy = "tour")
    private Collection<Tourprices> tourprices;



    public String getTourId() {
        return tourId;
    }

    public void setTourId(String tourId) {
        this.tourId = tourId;
    }

    @Basic
    @Column(name = "tourName", nullable = false, length = 100)
    public String getTourName() {
        return tourName;
    }

    public void setTourName(String tourName) {
        this.tourName = tourName;
    }

    @Basic
    @Column(name = "vehicle", nullable = true, length = 100)
    public String getVehicle() {
        return vehicle;
    }

    public void setVehicle(String vehicle) {
        this.vehicle = vehicle;
    }

    @Basic
    @Column(name = "price", nullable = false, precision = 0)
    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Basic
    @Column(name = "startDay", nullable = false)
    public Date getStartDay() {
        return startDay;
    }

    public void setStartDay(Date startDay) {
        this.startDay = startDay;
    }

    @Basic
    @Column(name = "maxseats", nullable = false)
    public int getMaxseats() {
        return maxseats;
    }

    public void setMaxseats(int maxseats) {
        this.maxseats = maxseats;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Tour tour = (Tour) o;
        return price == tour.price && maxseats == tour.maxseats && Objects.equals(tourId, tour.tourId) && Objects.equals(tourName, tour.tourName) && Objects.equals(vehicle, tour.vehicle) && Objects.equals(startDay, tour.startDay);
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {

        this.content = content == null || content.isEmpty() ? "":content;
    }

    @Override
    public int hashCode() {
        return Objects.hash(tourId, tourName, vehicle, price, startDay, maxseats);
    }


    public Collection<Bookingdetails> getBookingdetails() {
        return bookingdetails;
    }

    public void setBookingdetails(Collection<Bookingdetails> bookingdetails) {
        this.bookingdetails = bookingdetails;
    }


    public Collection<Tourprices> getTourprices() {
        if(tourprices != null)
            tourprices = tourprices.stream().sorted(Comparator.comparing(Tourprices::getPrice)).collect(Collectors.toList());
        return tourprices;
    }

    public void setTourprices(Collection<Tourprices> tourprices) {

        this.tourprices = tourprices;
    }

    public Date getEndDay() {
        return endDay;
    }

    public void setEndDay(Date endDay) {
        this.endDay = endDay;
    }


    public List<Contents> getContents() {
        if(contents!= null)
            contents = contents.stream().sorted(Comparator.comparing(Contents::getDate)).collect(Collectors.toList());
        return contents;
    }

    public void setContents(List<Contents> contents) {
        this.contents = contents;
    }

    @Override
    public String toString() {
        return "Tour{" +
                "tourId='" + tourId + '\'' +
                ", tourName='" + tourName + '\'' +
                ", vehicle='" + vehicle + '\'' +
                ", price=" + price +
                ", startDay=" + startDay +
                ", maxseats=" + maxseats +
                ", endDay=" + endDay+
                '}';
    }
}
