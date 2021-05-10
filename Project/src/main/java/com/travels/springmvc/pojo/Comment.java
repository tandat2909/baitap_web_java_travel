package com.travels.springmvc.pojo;

import com.travels.springmvc.Annotation.GeneratedValueUUID;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "comment")
public class Comment {
    @Id
    @Column(name = "commentID", nullable = false, length = 100)
    @GeneratedValueUUID
    private String commentId;

    @Column(name="comment_parent")
    private String commentParentId;
    @Column(name = "accountID")
    private String accountId;
    @Column(name = "newID")
    private String newsId;

    @Column(name = "date_comment")
    private Date date_comment;

    @Column(name = "content")
    private String content;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "accountID",insertable = false, updatable = false)
    private Account account;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "newID",insertable = false, updatable = false)
    private News news;

    @OneToMany(mappedBy = "commentParent",cascade = CascadeType.ALL)
    private List<Comment> comment_parent;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "comment_parent", insertable = false, updatable = false)
    private Comment commentParent;



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

    public String getCommentParentId() {
        return commentParentId;
    }

    public void setCommentParentId(String commentParentId) {
        this.commentParentId = commentParentId;
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    public String getNewsId() {
        return newsId;
    }

    public void setNewsId(String newsId) {
        this.newsId = newsId;
    }

    public List<Comment> getComment_parent() {
        return comment_parent;
    }

    public void setComment_parent(List<Comment> comment_parent) {
        this.comment_parent = comment_parent;
    }

    public Comment getCommentParent() {
        return commentParent;
    }

    public void setCommentParent(Comment commentParent) {
        this.commentParent = commentParent;
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
                ", commentParentId='" + commentParentId + '\'' +
                ", accountId='" + accountId + '\'' +
                ", newsId='" + newsId + '\'' +
                ", date_comment=" + date_comment +
                ", content='" + content + '\'' +
                '}';
    }
}
