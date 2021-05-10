package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Comment;
import com.travels.springmvc.services.ICommentService;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
class CommentServiceTest {

    @Autowired
    ICommentService commentService;
    Comment comment;


    @BeforeEach
    void setUp() {
        comment = new Comment();
        comment.setDate_comment(new Date());
        comment.setCommentId(UUID.randomUUID().toString());
        comment.setContent("bánh bèo bèo nhèo");
        comment.setAccountId("7f1112ae-65b8-4bd4-817e-399b595c4c98");
        comment.setCommentParentId("2");
        comment.setNewsId("cf6aa1f5-76ec-485c-816d-f8ea3b0a4175");
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void getAll() {
        List<Comment> commentList = commentService.getAll().stream().filter(c -> c.getCommentParentId() == null && c.getNews().getNewId().equals("cf6aa1f5-76ec-485c-816d-f8ea3b0a4175")).collect(Collectors.toList());
        System.out.println(commentList);
    }

    @Test
    void getCommentChild() {
        //List<Comment> commentsChild = news.getComments().stream().filter(cm -> cm.getCommentParentId().equals(c.getCommentId())).collect(Collectors.toList());
    }
    @Test
    void add(){
        try{
            commentService.add(comment);
            System.out.println("Thêm thành công");
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}