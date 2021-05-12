package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.PayMent;
import com.travels.springmvc.respository.IPayMentRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class PayMentRepository extends GenericsRepository<PayMent,String> implements IPayMentRepository {
}
