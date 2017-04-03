package com.demo.service;

import com.demo.mapper.userMapper;
import com.demo.po.user;
import com.demo.service.impl.userServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Coding......
 * Created by D.SR on 2017/2/20.
 */
@Service
public class userService implements userServiceImpl{

    @Resource
    userMapper mapper;


    public user getUser(String userName) {
        return mapper.getUser(userName);
    }
}
