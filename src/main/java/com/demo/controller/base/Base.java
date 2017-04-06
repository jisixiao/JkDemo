package com.demo.controller.base;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/**
 * Coding......
 * Created by jisixiao on 2017/4/5.
 */
public class Base<T> {
    private Logger logger = null;

    private  Class<T> entityClass = null;

    public Base() {
        Type genType = getClass().getGenericSuperclass();
        Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
        Class<T> entityClass = (Class) params[0];
        logger = LoggerFactory.getLogger(entityClass);
    }

    /**
     * info 日志
     * @param s 日志信息
     */
    public void logInfo(String s) {
    logger.info( s);
    }

}
