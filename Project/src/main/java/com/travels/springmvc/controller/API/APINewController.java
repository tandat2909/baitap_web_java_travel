package com.travels.springmvc.controller.API;

import com.travels.springmvc.services.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/api")
@RestController
public class APINewController {

    @Autowired
    INewsService newsService;

    @DeleteMapping("/New")
    @ResponseStatus(HttpStatus.OK)
    public void deleteTour(@RequestParam(value = "newId", required = false) String newId) {
        System.err.println("===================================");
        System.err.println("id tour: " + newId);
        System.err.println("===================================");
        newsService.remove(newsService.getElementById(newId));
    }
}
