package com.travels.springmvc.modelView;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.pojo.Ticket;

import java.util.*;
import java.util.stream.Collectors;

public class BookingView {
   Customer customer = new Customer();
   //định dạng hoten+":"+giotinh+":"+ngaysinh+":"+ages+";"
   String tickets;
   String note;
   String typeThanhToan;


   public List<Ticket> getTickets(){
      if(!tickets.isBlank()){
         String[] datas = tickets.split(";");
         return Arrays.stream(datas).map( i->{
            String[] a = i.split(":");
            Ticket temp = new Ticket();
            Customer cus = new Customer();
            cus.setCustomerId(UUID.randomUUID().toString());
            cus.setBirthDay(Utils.getDateRequest(a[2]));
            cus.setGender(a[1]);
            String[] hoten = a[0].split(" ",1);
            cus.setFirstName(hoten[0]);
            cus.setLastName(hoten[1]);
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

   public String getNote() {
      return note;
   }

   public void setNote(String note) {
      this.note = note;
   }

   public String getTypeThanhToan() {
      return typeThanhToan;
   }

   public void setTypeThanhToan(String typeThanhToan) {
      this.typeThanhToan = typeThanhToan;
   }

   @Override
   public String toString() {
      return "BookingView{" +
              "employees=" + customer +
              ", tickets='" + tickets + '\'' +
              ", note='" + note + '\'' +
              ", typeThanhToan='" + typeThanhToan + '\'' +
              '}';
   }
}
