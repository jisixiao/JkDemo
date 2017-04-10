package com.demo.service.impl;

import com.demo.mapper.MenuMapper;
import com.demo.po.MenuExample;
import com.demo.service.MenuTreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Coding......
 * Created by jisixiao on 2017/4/9.
 */
@Service
public class MenuTreeServiceImpl implements MenuTreeService {

    @Autowired
    MenuMapper menuMapper;


    public int getfModuleidContent(String fModuleid) {
        MenuExample menuExample = new MenuExample();

        MenuExample.Criteria criteria = menuExample.createCriteria();
        criteria.andFParentidEqualTo(fModuleid);
        //查询  F_ParentId = fModuleid的 所有 信息
        int countByExample = menuMapper.countByExample(menuExample);

        return countByExample;
    }

    public int getfParentidContent(String fParentid) {
        MenuExample menuExample = new MenuExample();

        MenuExample.Criteria criteria = menuExample.createCriteria();
        criteria.andFParentidEqualTo(fParentid);
        int countByExample = menuMapper.countByExample(menuExample);
        return countByExample;
    }
}
