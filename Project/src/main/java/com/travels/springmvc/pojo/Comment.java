package com.travels.springmvc.pojo;

import com.travels.springmvc.Annotation.GeneratedValueUUID;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "comment")
public class Comment {
    @Id
    @Column(name = "commentID", nullable = false, length = 100)
    @GeneratedValueUUID
    private String commentId;

    @Column(name = "date_comment")
    private Date date_comment;

    @Column(name = "content")
    private String content;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "accountID",insertable = false, updatable = false)
    private Account account;

    @Column(name = "comment_parent")
    private String comment_parent;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "newID",insertable = false, updatable = false)
    private News news;


    public String getCommentId() {
        return commentId;
    }

    public void setCommentId(String commentId) {
        this.commentId = commentId;
    }

    public Date getDate_comment() {
        return date_comment;
    }

    public void setDate_comment(Date date_comment) {
        this.date_comment = date_comment;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public String getComment_parent() {
        return comment_parent;
    }

    public void setComment_parent(String comment_parent) {
        this.comment_parent = comment_parent;
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commentId='" + commentId + '\'' +
                ", content='" + content + '\'' +
                ", date_comment='" + date_comment + '\'' +
                ", account='" + account + '\'' +
                ", comment_parent='" + comment_parent + '\'' +
                ", news='" + news + '\'' +
                '}';
    }

}
