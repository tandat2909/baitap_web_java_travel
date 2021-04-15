package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.respository.ICustomerRepository;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TourService extends GenericsService<Tour,String> implements ITourService {

}
