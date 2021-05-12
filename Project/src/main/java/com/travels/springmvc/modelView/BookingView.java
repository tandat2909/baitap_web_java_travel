package com.travels.springmvc.modelView;

import com.travels.springmvc.pojo.*;

import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;

public class BookingView {
   Account customer ;
   Booking booking = new Booking();
   //định dạng hoten+":"+giotinh+":"+ngaysinh+":"+ages+";"
   String tickets;



   public List<Ticket> getTickets(){

      if(!tickets.isBlank()){
         String[] datas = tickets.split(";");
         return Arrays.stream(datas).map( i->{
            System.err.println("===============list tickets trong model view");
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
            System.err.println("cutomermodelview: " + temp.getCustomer());
            System.err.println("ticketmodeview: " + temp);
            return temp;
         }).collect(Collectors.toList());
      }
      return null;
   }

   public Account getCustomer() {
      return customer;
   }

   public void setCustomer(Account customer) {
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
