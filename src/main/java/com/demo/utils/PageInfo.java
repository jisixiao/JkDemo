package com.demo.utils;

import java.util.List;

/**
 * pageUtil
 *
 * @author ju_SZ
 * @create 2017-05-10 10:33
 **/
public class PageInfo<T> {
    private List<T> data;

    private int total;


    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}
