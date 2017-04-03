package com.demo.mapper;

import com.demo.po.user;
import org.springframework.stereotype.Repository;

/**
 * Coding......
 * Created by D.SR on 2017/2/20.
 */

public interface userMapper {

    public user getUser(String usernName);
}
