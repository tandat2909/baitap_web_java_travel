package com.travels.springmvc.controller.API;


import com.travels.springmvc.services.ILandMarkService;
import com.travels.springmvc.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/api")
@RestController
public class APITourController {
    @Autowired
    ITourService tourService;
    @Autowired
    ILandMarkService landMarkService;

    @DeleteMapping("/tour")
    @ResponseStatus(HttpStatus.OK)
    public void deleteTour(@RequestParam("tourid") String tourid) throws Exception {
        System.err.println("===================================");
        System.err.println("id tour: "+tourid);
        System.err.println("===================================");
        tourService.removeTour(tourid);
    }






}
