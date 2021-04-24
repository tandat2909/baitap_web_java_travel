package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Sysconfig;
import com.travels.springmvc.services.ISysconfigService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SysConfigService extends GenericsService<Sysconfig,String> implements ISysconfigService {
}
