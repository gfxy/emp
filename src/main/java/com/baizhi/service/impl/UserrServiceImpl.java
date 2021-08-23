package com.baizhi.service.impl;

import com.baizhi.dao.UserrDAO;
import com.baizhi.entity.Userr;
import com.baizhi.service.UserrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
@Transactional
public class UserrServiceImpl implements UserrService {

    @Autowired
    private UserrDAO userrDAO;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public Userr query(String username) {
        Userr userr = userrDAO.select(username);
        return userr;
    }
}
