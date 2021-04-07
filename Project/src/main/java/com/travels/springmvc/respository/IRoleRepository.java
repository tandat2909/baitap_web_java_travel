package com.travels.springmvc.respository;

import com.travels.springmvc.pojo.Role;
import com.travels.springmvc.respository.Enum.ERole;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface IRoleRepository extends IGenericsRepository<Role,String> {

    Role getRoleByEnum(ERole eRole);

}
