package com.demo.controller.base;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 页面跳转基础页
 * Created by jisixiao on 2017/3/30.
 */
@Controller
public class BaseController {

    @RequestMapping("/goHomeView.action")
    public String goHomeView(HttpServletRequest request) {

        String userNamme = (String) request.getSession().getAttribute("userName");
        System.out.println(userNamme);
        if (userNamme != null && !userNamme.equals("")) {
            return "home.jsp";
        } else {
            return "index.jsp";
        }
    }

    @RequestMapping("/godefaultView.action")
    public String godefaultView(HttpServletRequest request) {

         return "default.jsp";
    }


}
