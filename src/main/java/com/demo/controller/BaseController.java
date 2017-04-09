package com.demo.controller;

import com.demo.controller.base.Base;
import com.demo.service.MenuService;
import com.demo.service.MenuTreeService;
import com.demo.service.userService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Coding......
 * Created by jisixiao on 2017/4/5.
 */

public class BaseController<T> extends Base<T> {

    @Autowired
    protected userService service;
    @Autowired
    protected MenuService menuService;

    @Autowired
    protected MenuTreeService menuTreeService;


    public BaseController() {

    }


}
