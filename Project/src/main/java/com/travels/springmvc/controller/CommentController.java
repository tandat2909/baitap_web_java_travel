package com.travels.springmvc.controller;


import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Comment;
import com.travels.springmvc.services.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/newsdetails")
public class CommentController {
    @Autowired
    ICommentService commentService;

    public void getListComment(Model model){
        List<Comment> commentList = commentService.getAll().stream().filter(c->c.getCommentParentId()==null).collect(Collectors.toList());
//            comment1.getNewsId() && comment1.getCommentParentId().isEmpty()
//        }).collect(Collectors.toList());
        model.addAttribute("commentParent", commentList);
        System.err.println("==================");
        System.err.println(commentList);
        System.err.println("==================");
    }
}
