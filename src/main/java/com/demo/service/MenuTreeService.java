package com.demo.service;

/**
 * Coding......
 * Created by jisixiao on 2017/4/9.
 */
public interface MenuTreeService {

    /**
     * 查询 fModuleid 的 所有个数
     * @param fModuleid
     * @return
     */
    public int getfModuleidContent(String fModuleid);

    /**
     * 查询 所有的父节点
     * @param fParentid
     * @return
     */
    public int getfParentidContent(String fParentid);
}
