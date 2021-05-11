package com.travels.springmvc.controller;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.News;
import com.travels.springmvc.respository.Enum.EMessages;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
public class NewsController {
    @Autowired
    IAccountService accountService;
    @Autowired
    INewsService newsService;

    @GetMapping(value = {"/admin/addNews", "/employee/addNews"})
    public String addNew(Model model, HttpServletRequest request) {
        News current = new News();
        model.addAttribute("addNew", current);
        return "addNews";
    }

    @PostMapping(value = {"/admin/addNews", "/employee/addNews"})
    public String addNews(@ModelAttribute("addNew") News news, RedirectAttributes attributes,HttpServletRequest request) {

        MultipartFile img = news.getImg();
        Account emp = accountService.getAccountByUserName(request.getUserPrincipal().getName());

        String rootDir = request.getSession()
                .getServletContext().getRealPath("/");
        if (img != null && !img.isEmpty()) {
            try {
                String nameImg = news.getTitle() + ".png";
                img.transferTo(new File(rootDir + "resources/TrangChu/images/imgNews/"
                        + nameImg));
                news.setImage("/TrangChu/images/imgNews/" + nameImg);
            } catch (IOException | IllegalStateException ex) {
                System.err.println("=========lỗi======");
                System.err.println(ex.getMessage());
            }
        }
        if(emp != null)
            news.setAccountId(emp.getAccountId());
        try {
            news.setDate_submitted(new Date());
            newsService.add(news);
            attributes.addFlashAttribute("messges", new String[]{EMessages.success.name(), "Thêm tin tức thành công"});
        } catch (Exception e) {
            e.printStackTrace();
            attributes.addFlashAttribute("messges", new String[]{EMessages.error.name(), e.getMessage()});
        }



        return "redirect:/admin/News";
    }
    @RequestMapping(value = {"/admin/editNews", "/employee/editNews"})
    public String editNews(Model model, @RequestParam(value = "newId", required = true) String newId) {
        News news = newsService.getElementById(newId);
        Account account = news.getAccount();
        System.err.println("===============");
        System.err.println(news.getAccountId());
        System.err.println("===============");
        model.addAttribute("neww", news);
        model.addAttribute("accountNews", account);
        return "editNews";
    }

    @PostMapping(value = {"/admin/editNews", "/employee/editNews"})
    public String updateAndSave(@ModelAttribute("neww") News news, HttpServletRequest request,
                                RedirectAttributes attributes) {
//        System.err.println("============dô=");
//        System.err.println(news.getNewId());
        News current = newsService.getElementById(news.getNewId());
//        System.err.println(news.getEmployeeId());

        MultipartFile img = news.getImg();
        String rootDir = request.getSession()
                .getServletContext().getRealPath("/");

        if (img != null && !img.isEmpty()) {
            try {

                String nameImg = news.getTitle() + ".png";
                img.transferTo(new File(rootDir + "resources/TrangChu/images/imgNews/"
                        + nameImg));
                current.setImage("/TrangChu/images/imgNews/" + nameImg);
            } catch (IOException | IllegalStateException ex) {
                System.err.println("=========lỗi======");
                System.err.println(ex.getMessage());
            }
        }
        current.setDate_submitted(new Date());
        current.setShort_description(news.getShort_description());
        current.setLong_description(news.getLong_description());
        current.setTitle(news.getTitle());
//        System.err.println("==============");
//        System.err.println("rootdri" + rootDir);
//        System.err.println(news);
//        System.err.println("==============");
        try {
            newsService.update(current);
            attributes.addFlashAttribute("messges", new String[]{EMessages.success.name(), "Sửa tin tức thành công"});
        } catch (Exception e) {
            attributes.addFlashAttribute("messges", new String[]{EMessages.error.name(), e.getMessage()});
            e.printStackTrace();
        }

        return "redirect:/admin/editNews?newId="+news.getNewId();
    }


    @RequestMapping(value = {"/admin/News", "/employee/News"})
    public String pageListNews(Model model) {
        List<News> news = newsService.getAll();
        System.err.println("=================");
        System.err.println(news);
        System.err.println("=================");
        model.addAttribute("news", news);
        return "template_news_admin";
    }
}
