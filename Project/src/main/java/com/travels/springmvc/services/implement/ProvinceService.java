package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Province;
import com.travels.springmvc.services.IProvinceService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class ProvinceService extends GenericsService<Province,String> implements IProvinceService {
}
