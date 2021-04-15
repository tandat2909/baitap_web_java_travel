package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Role;
import com.travels.springmvc.respository.Enum.ERole;
import com.travels.springmvc.respository.IRoleRepository;
import org.apache.commons.lang.NullArgumentException;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class RoleRepository extends GenericsRepository<Role, String> implements IRoleRepository {

    @Override
    public Role getRoleByEnum(ERole eRole) {
        try {
            return getElementById(eRole.name());
        } catch (NullPointerException exception) {
            throw new NullPointerException("getRoleByEnum Error: eRole is null");
        }
    }
}
