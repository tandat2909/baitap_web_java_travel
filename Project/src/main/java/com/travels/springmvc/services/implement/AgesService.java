package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Ages;
import com.travels.springmvc.services.IAgesService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AgesService extends GenericsService<Ages,String> implements IAgesService {
}
