package com.travels.springmvc.pojo;

import com.travels.springmvc.Annotation.GeneratedValueUUID;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "news")
public class News implements Serializable {

    @Id
    @Column(name = "newID", nullable = false, length = 100)
    @GeneratedValueUUID
    private String newId;

    @Column(name = "title")
    private String title;

    @Column(name = "date_submitted")
    private Date date_submitted;

    @Column(name = "image")
    private String image;

    @Column(name = "accountID")
    private String accountId;

    @Transient
    private MultipartFile img;

    @Column(name = "short_description")
    private String short_description;

    @Column(name = "long_description")
    private String long_description;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "accountID",insertable = false, updatable = false)
    private Account account;

    @OneToMany(mappedBy = "news")
    private List<Comment> comments;



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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getDate_submitted() {
        return date_submitted;
    }

    public void setDate_submitted(Date date_submitted) {
        this.date_submitted = date_submitted;
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

    public MultipartFile getImg() {
        return img;
    }

    public void setImg(MultipartFile img) {
        this.img = img;
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    @Override
    public String toString() {
        return "News{" +
                "newId='" + newId + '\'' +
                ", image='" + image + '\'' +
                ", title='" + title + '\'' +
                ", date_submitted='" + date_submitted + '\'' +
                ", accountId='" + accountId + '\'' +
                ", short_description='" + short_description + '\'' +
                ", long_description='" + long_description + '\'' +
                '}';
    }



}
