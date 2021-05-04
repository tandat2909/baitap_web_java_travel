package com.travels.springmvc.pojo;

import com.travels.springmvc.Annotation.GeneratedValueUUID;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "news")
public class News implements Serializable {

    @Id
    @Column(name = "newID", nullable = false, length = 100)
    @GeneratedValueUUID
    private String newId;

    private String tilte;

    @Column(name = "date_submitted")
    private Date date_submitted;

    @Column(name = "image")
    private String image;

    @Column(name = "short_description")
    private String short_description;

    @Column(name = "long_description")
    private String long_description;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employeeID" ,nullable = false)
    private Employees employee;

    public String getNewId() {
        return newId;
    }

    public void setNewId(String newId) {
        this.newId = newId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getShort_description() {
        return short_description;
    }

    public void setShort_description(String short_description) {
        this.short_description = short_description;
    }

    public String getLong_description() {
        return long_description;
    }

    public void setLong_description(String long_description) {
        this.long_description = long_description;
    }

    public Employees getEmployee() {
        return employee;
    }

    public void setEmployee(Employees employee) {
        this.employee = employee;
    }
    @Override
    public String toString() {
        return "News{" +
                "newId='" + newId + '\'' +
                ", image='" + image + '\'' +
                ", short_description='" + short_description + '\'' +
                ", long_description='" + long_description + '\'' +
                '}';
    }


    public String getTilte() {
        return tilte;
    }

    public void setTilte(String tilte) {
        this.tilte = tilte;
    }

    public Date getDate_submitted() {
        return date_submitted;
    }

    public void setDate_submitted(Date date_submitted) {
        this.date_submitted = date_submitted;
    }
}
