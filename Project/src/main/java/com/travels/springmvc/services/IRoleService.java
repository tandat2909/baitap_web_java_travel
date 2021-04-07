package com.travels.springmvc.services;

import com.travels.springmvc.pojo.Role;
import com.travels.springmvc.respository.Enum.ERole;

import java.util.List;


public interface IRoleService{
    Role getRole(ERole eRole);
    List<Role> getAll();
}
