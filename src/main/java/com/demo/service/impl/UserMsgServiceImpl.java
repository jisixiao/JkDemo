package com.demo.service.impl;

import com.demo.service.UserMsgService;
import org.springframework.stereotype.Service;

/**
 * UserMsgServiceImpl
 *
 * @author Administrator ju_SZ
 * @create 2017-05-04 14:36
 **/

@Service
public class UserMsgServiceImpl  implements UserMsgService {



    public String getString() {
        return "get String ";
    }
}
