package com.demo.mapper;

import com.demo.po.User;

import java.util.List;
import java.util.Map;

/**
 * Coding......
 * Created by D.SR on 2017/2/20.
 */

public interface userMapper {

    public User getUser(String usernName);

    public List<User> getAllUser();

    public List<User> pagedQueryUser(Map<String, Object> map);

}
