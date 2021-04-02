package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Ticket;
import com.travels.springmvc.respository.ITicketRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class TicketRepository extends GenericsRepository<Ticket,String> implements ITicketRepository {
}
