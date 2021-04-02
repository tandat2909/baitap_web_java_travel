package com.travels.springmvc.respository;

import com.travels.springmvc.pojo.Role;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IRoleRepository extends IGenericsRepository<Role,String> {
    List<Role> getRoleAll();
}
