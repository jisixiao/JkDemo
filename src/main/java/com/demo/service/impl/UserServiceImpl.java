package com.demo.service.impl;

import com.demo.mapper.userMapper;
import com.demo.po.User;
import com.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 用户信息实现
 *
 * @author ju_SZ
 * @create 2017-05-11 10:42
 **/
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    userMapper userMapper;


    public User getUser(String usernName) {
        return userMapper.getUser(usernName);
    }

    public List<User> getAllUser() {
        return userMapper.getAllUser();
    }

    public List<User> pagedQueryUser(Map<String, Object> map) {
        return userMapper.pagedQueryUser(map);
    }

    public void deleteUserById(int id) {
        userMapper.deleteUserById(id);
    }

    public void updataUserById(User user) {
System.out.println(user.getId());

        userMapper.updataUserById(user.getId(),
                user.getUsername(),
                user.getPassword(),
                user.getDepartment(),
                user.getEmail(),
                user.getDepartmentId(),
                user.getPosition(),
                user.getAuthority());
    }
}
