package com.demo.service;

import com.demo.po.User;

import java.util.List;
import java.util.Map;

/**
 * 用户信息Service
 *
 * @author ju_SZ
 * @create 2017-05-11 10:42
 **/
public interface UserService {

    public User getUser(String usernName);

    public List<User> getAllUser();

    public List<User> pagedQueryUser(Map<String, Object> map);
}
