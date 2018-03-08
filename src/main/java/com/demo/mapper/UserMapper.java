package com.demo.mapper;

import com.demo.po.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Coding......
 * Created by D.SR on 2017/2/20.
 */

public interface UserMapper {

    public User getUser(String usernName);

    public List<User> getAllUser();

    public List<User> pagedQueryUser(Map<String, Object> map);

    public void deleteUserById(int id);

   public void  updataUserById(@Param("id") int id,
                               @Param("username") String username,
                               @Param("password") String password,
                               @Param("department") String department,
                               @Param("email")String email,
                               @Param("departmentId")String departmentId,
                               @Param("position")String position,
                               @Param("authority") String authority);

}
