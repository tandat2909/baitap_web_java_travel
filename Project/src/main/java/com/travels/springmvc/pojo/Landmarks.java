package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "landmarks")
public class Landmarks implements Serializable{

    @Id
    @Column(name = "landMarkID", nullable = false, length = 100)
    private String landMarkId;

    private String landMarkName;
    private String details;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "provinceID", referencedColumnName = "provinceID", nullable = false)
    private Province province;

    @ManyToMany(mappedBy = "landmarkss")
    private Collection<Tour> tours;

    @OneToMany(mappedBy = "landmark")
    private List<Contents> contents;


    public String getLandMarkId() {
        return landMarkId;
    }

    public void setLandMarkId(String landMarkId) {
        this.landMarkId = landMarkId;
    }


    @Basic
    @Column(name = "landMarkName", nullable = false, length = 200)
    public String getLandMarkName() {
        return landMarkName;
    }

    public void setLandMarkName(String landMarkName) {
        this.landMarkName = landMarkName;
    }

    @Basic
    @Column(name = "details", nullable = true, length = 2000)
    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Landmarks landmarks = (Landmarks) o;
        return Objects.equals(landMarkId, landmarks.landMarkId)  && Objects.equals(landMarkName, landmarks.landMarkName) && Objects.equals(details, landmarks.details);
    }

    @Override
    public int hashCode() {
        return Objects.hash(landMarkId, landMarkName, details);
    }


    public Province getProvince() {
        return province;
    }

    public void setProvince(Province province) {
        this.province = province;
    }

    public Collection<Tour> getTours() {
        return tours;
    }

    public void setTours(Collection<Tour> tours) {
        this.tours = tours;
    }

    public List<Contents> getContents() {
        return contents;
    }

    public void setContents(List<Contents> contents) {
        this.contents = contents;
    }

    @Override
    public String toString() {
        return "Landmarks{" +
                "landMarkId='" + landMarkId + '\'' +
                ", landMarkName='" + landMarkName + '\'' +
                ", details='" + details + '\'' +
//                ", province=" + province +
                '}';
    }
}
