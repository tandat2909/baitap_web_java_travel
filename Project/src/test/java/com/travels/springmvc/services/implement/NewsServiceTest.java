package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.News;
import com.travels.springmvc.services.INewsService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;
import java.util.UUID;

@SpringBootTest
public class NewsServiceTest {

    News news;

    @Autowired
    INewsService newsService;


    @BeforeEach
    void setUp(){
        news = new News();
        news.setNewId(UUID.randomUUID().toString());
        news.setAccountId("b470582c-9d10-41cc-a2f4-c8dd425dec02");
        news.setLong_description("hhhhhhhhhh");
        news.setTitle("aaaaaaaaaaaa");
        news.setDate_submitted(new Date());
        news.setShort_description("bbbbbbbbbbb");
    }

    @Test
    void add(){
        try {
            newsService.add(news);
            System.out.println("thêm thành công");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    @Test
    void update(){
        try{
            News news = newsService.getElementById("25eb8d9c-1f11-4785-914e-839c3d30d40f");
            news.setTitle("mmmmmmmmmm");
            newsService.update(news);
            System.out.println("sửa thành công");
        } catch (Exception e){
            e.printStackTrace();
        }
    }
    @Test
    void remove(){
        try{
            newsService.remove(newsService.getElementById("25eb8d9c-1f11-4785-914e-839c3d30d40f"));
        } catch (Exception e){
            e.printStackTrace();
        }
    }

}
