package com.demo.service.impl;

import com.demo.mapper.MenuMapper;
import com.demo.po.Menu;
import com.demo.po.MenuExample;
import com.demo.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Coding......
 * Created by jisixiao on 2017/4/4.
 */
@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    MenuMapper menuMapper;
    public List<Menu> getMenuList() {
        MenuExample menuExample = new MenuExample();
        MenuExample.Criteria criteria = menuExample.createCriteria();

        //List<Menu> menuList = menuMapper.selectByExample(menuExample);
        List<Menu> menuList = menuMapper.selectAllMenu();

        return menuList;
    }
}
