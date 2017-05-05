package com.demo.dubbo.service.impl;

import org.springframework.context.support.ClassPathXmlApplicationContext;

/**


/**
 * 测试 Dubbo
 *
 * @author Administrator ju_SZ
 * @create 2017-05-04 14:50
 **/
public class DubboText {

    public static void main(String[] args) throws Exception {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
                new String[] { "dubbo-server.xml" });
        context.start();
        System.in.read(); // 为保证服务一直开着，利用输入流的阻塞来模拟
    }

}
