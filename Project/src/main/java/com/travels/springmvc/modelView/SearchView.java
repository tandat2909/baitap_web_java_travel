package com.travels.springmvc.modelView;

import com.travels.springmvc.pojo.Tour;

import java.math.BigDecimal;
import java.sql.Date;

public class SearchView {
    private String province;
    private String landMark;
    private BigDecimal price;
    private Date fromDay;
    private Date toDate;

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getLandMark() {
        return landMark;
    }

    public void setLandMark(String landMark) {
        this.landMark = landMark;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Date getFromDay() {
        return fromDay;
    }

    public void setFromDay(Date fromDay) {
        this.fromDay = fromDay;
    }

    public Date getToDate() {
        return toDate;
    }

    public void setToDate(Date toDate) {
        this.toDate = toDate;
    }

//    public Tour getTour(){
//        Tour tour = new Tour();
//        tour.
//
//    }

    @Override
    public String toString() {
        return "SearchView{" +
                "province='" + province + '\'' +
                ", landMark='" + landMark + '\'' +
                ", price=" + price +
                ", fromDay=" + fromDay +
                ", toDate=" + toDate +
                '}';
    }
}
