package com.travels.springmvc.modelView;

import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.pojo.Ticket;

import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;

public class BookingView {
   Customer customer = new Customer();
   Booking booking = new Booking();
   //định dạng hoten+":"+giotinh+":"+ngaysinh+":"+ages+";"
   String tickets;



   public List<Ticket> getTickets(){

      if(!tickets.isBlank()){
         String[] datas = tickets.split(";");
         return Arrays.stream(datas).map( i->{
            System.err.println("===============list");
            String[] a = i.split(":");
            Ticket temp = new Ticket();
            Customer cus = new Customer();
            cus.setCustomerId(UUID.randomUUID().toString());
            cus.setBirthDay(Utils.getDateRequest(a[2]));
            cus.setGender(a[1]);
            String[] hoten = a[0].split(" ",2);
            System.err.println("length ho ten ticket: "+hoten.length);
            if(hoten.length == 2){
               cus.setFirstName(hoten[0]);
               cus.setLastName(hoten[1]);
            }else cus.setLastName(a[0]);
            temp.setTicketId(UUID.randomUUID().toString());
            temp.setCustomer(cus);
            temp.setAgesId(a[3]);
            return temp;
         }).collect(Collectors.toList());
      }
      return null;
   }

   public Customer getCustomer() {
      return customer;
   }

   public void setCustomer(Customer customer) {
      this.customer = customer;
   }

   public void setTickets(String tickets) {
      this.tickets = tickets;
   }

   public Booking getBooking() {
      booking.setTotalMoney(new BigDecimal(0));
      return booking;
   }

   public void setBooking(Booking booking) {
      this.booking = booking;
   }



   @Override
   public String toString() {
      return "BookingView{" +
              "customer=" + customer +
              ", booking=" + booking +
              ", tickets='" + tickets + '\'' +
              '}';
   }
}
