package com.travels.springmvc.modelView;

import com.travels.springmvc.pojo.Contents;
import com.travels.springmvc.pojo.Landmarks;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.pojo.Tourprices;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class TourView {
    Tour tour = new Tour();
    //id:price;
    String prices;
    //lấy id địa danh
    //định dạng chuỗi:  ngay <:> landMarkId<:>contents</end>;
    String contents;
    String ngaydi;
    String ngayve;


    public Tour getTour() {
        try{
            tour.setStartDay(Utils.getDateRequest(ngaydi));
            tour.setEndDay(Utils.getDateRequest(ngayve));
        }catch (IllegalArgumentException ignored){

        }
        return tour;
    }

    public void setTour(Tour tour) {

        this.tour = tour;
    }

    public String getPrices() {
        return prices;
    }

    public void setPrices(String prices) {
        this.prices = prices;
    }

    public String getLandMarkId() {
        return contents;
    }

    public void setLandMarkId(String landMarkId) {
        this.contents = landMarkId;
    }

    public String getNgaydi() {
        return ngaydi;
    }

    public void setNgaydi(String ngaydi) {
        this.ngaydi = ngaydi;
    }

    public String getNgayve() {
        return ngayve;
    }

    public void setNgayve(String ngayve) {
        this.ngayve = ngayve;
    }

    public List<Tourprices> getTourprices(){
        if(!prices.isBlank()){
            return Arrays.stream(prices.split(";")).map(item ->{
                String[] data = item.split(":");
                Tourprices temp = new Tourprices();
                temp.setAgeId(data[0]);
                temp.setPrice(new BigDecimal(data[1]));
                return temp;
            }).collect(Collectors.toList());
        }
        return null;
    }

    public List<Contents> getListContens() {
       if (contents != null && !contents.isBlank() && !ngaydi.isBlank() && !ngayve.isBlank()) {
            String[] cnt = contents.split("</end>");
            return Arrays.stream(cnt).map(i -> {
                String[] data = i.split("<:>");
//                System.err.println("=============");
//                System.err.println(data+"+"+i);
                Date nd = Utils.getDateRequest(ngaydi);
                nd.setDate((nd.getDate() + Integer.parseInt(data[0])));
                Contents temp = new Contents();
                temp.setContent(data[2]);
                temp.setDate(nd);
                temp.setLandMarkID(data[1]);

                return temp;
            }).collect(Collectors.toList());

        }

        return null;
    }
    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    @Override
    public String toString() {
        return "TourView{" +
                "tour=" + tour.getTourName() +
                ", prices='" + prices + '\'' +
                ", contents='" + contents + '\'' +
                ", ngaydi='" + ngaydi + '\'' +
                ", ngayve='" + ngayve + '\'' +
                '}';
    }
}
