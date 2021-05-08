package com.travels.springmvc.controller.API;


import com.travels.springmvc.services.ILandMarkService;
import com.travels.springmvc.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.Random;

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
        tourService.remove(tourService.getElementById(tourid));
    }

    @GetMapping("/admin/tour/price")
    public BigDecimal[] getpriceall(){
        BigDecimal[] s = new BigDecimal[7];
        Random generator = new Random(19900828);
        for (int i =0; i<7;i++){

            s[i] = new BigDecimal(generator.nextDouble() *1000);
        }

        return s;
    }






}
