package com.demo.controller.base;

import com.demo.service.MenuService;
import com.demo.service.userService;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * Coding......
 * Created by jisixiao on 2017/4/5.
 */
@Controller
public class BaseController<T> extends Base<T> {

    @Autowired
    protected userService service;
    @Autowired
    protected MenuService menuService;

}
