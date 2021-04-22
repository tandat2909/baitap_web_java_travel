package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Landmarks;
import com.travels.springmvc.services.ILandMarkService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class LandMarkService extends GenericsService<Landmarks,String> implements ILandMarkService {

}
