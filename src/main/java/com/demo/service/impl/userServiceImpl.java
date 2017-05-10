package com.demo.service.impl;

import com.demo.mapper.userMapper;
import com.demo.po.User;
import com.demo.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Coding......
 * Created by D.SR on 2017/2/20.
 */
@Service
public class UserServiceImpl implements UserService {

    @Resource
    userMapper mapper;


    public User getUser(String userName) {
        return mapper.getUser(userName);
    }

    public List<User> getAllUser() {
        return mapper.getAllUser();
    }

    public List<User> pagedQueryUser(Map<String, Object> map) {
        return mapper.pagedQueryUser(map);
    }
}
