package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Role;
import com.travels.springmvc.respository.IRoleRepository;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class RoleRepository extends GenericsRepository<Role,String> implements IRoleRepository {



    @Override
    public List<Role> getRoleAll() {
        Session session = super.currentSession();
        System.out.println(session.isOpen());
        List<Role> roleList = session.createQuery("from Role ").getResultList();
        return roleList;
    }
}
