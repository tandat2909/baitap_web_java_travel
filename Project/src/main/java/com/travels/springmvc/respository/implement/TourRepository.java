package com.travels.springmvc.respository.implement;

import com.mysql.cj.Session;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.respository.ITourRepository;
import org.hibernate.Hibernate;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class TourRepository extends GenericsRepository<Tour,String> implements ITourRepository {

}
