package com.travels.springmvc.modelView;

import com.travels.springmvc.pojo.Contents;
import com.travels.springmvc.pojo.Landmarks;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.pojo.Tourprices;
import com.travels.springmvc.respository.Enum.EAges;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;
import java.util.*;
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
    MultipartFile img;


    public Tour getTour() {
        try {
            tour.setStartDay(Utils.getDateRequest(ngaydi));
            tour.setEndDay(Utils.getDateRequest(ngayve));
        } catch (IllegalArgumentException ignored) {
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

    public List<Tourprices> getTourprices() throws Exception {
        if (!prices.isBlank()) {
            Map<String,BigDecimal> checkValid = new HashMap<>();
            List<Tourprices> tourprices = new ArrayList<>();
            for (String item : prices.split(";")) {
                String[] data = item.split(":");
                if (data.length == 2) {
                    Tourprices temp = new Tourprices();
                    temp.setAgeId(data[0]);
                    temp.setPrice(new BigDecimal(data[1]));
                    checkValid.put(temp.getAgeId(),temp.getPrice());
                    tourprices.add(temp);
                }

            }
            if(checkValid.get(EAges.getId(EAges.NGUOILON)).compareTo(checkValid.get(EAges.getId(EAges.TREEM)))> 0)
                if(checkValid.get(EAges.getId(EAges.TREEM)).compareTo(checkValid.get(EAges.getId(EAges.TRENHO)))> 0)
                    if(checkValid.get(EAges.getId(EAges.TRENHO)).compareTo(checkValid.get(EAges.getId(EAges.EMBE)))> 0)
                        return tourprices;

            throw new Exception("Thông tin giá không hợp lệ\n Người lớn > Trẻ em > Trẻ nhỏ > Em bé");
        }
        throw new Exception("Thông tin giá không hợp lệ");
    }

    public List<Contents> getListContens() throws Exception {
        if (contents != null && !contents.isBlank() && !ngaydi.isBlank() && !ngayve.isBlank()) {
            String[] cnt = contents.split("</end>");
            List<Contents> s = new ArrayList<>();
            for (String i : cnt) {
                String[] data = i.split("<:>");
//                System.err.println("=============");
//                System.err.println(data+"+"+i);
                if(data.length==3){
                    try{
                    Date nd = Utils.getDateRequest(ngaydi);
                    nd.setDate((nd.getDate() + Integer.parseInt(data[0])));
                    Contents temp = new Contents();
                    temp.setContent(data[2]);
                    temp.setDate(nd);
                    if(data[1].equals("null")) throw new Exception("Vui lòng chọn địa điểm đi");
                    temp.setLandMarkID(data[1]);
                    s.add(temp);
                    }catch (IllegalArgumentException exception){
                        throw new Exception("Lỗi Định dạng ngày");
                    }catch (Exception e){
                        throw new Exception(e.getMessage());
                    }
                }
            }
            return s;
        }
        throw new Exception("Nội dung chương trình tour không để trống");

    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public MultipartFile getImg() {
        return img;
    }

    public void setImg(MultipartFile img) {
        this.img = img;
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
