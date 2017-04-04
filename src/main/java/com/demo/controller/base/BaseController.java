package com.demo.controller.base;

import com.demo.po.Menu;
import com.demo.service.MenuService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 页面跳转基础页
 * Created by jisixiao on 2017/3/30.
 */
@Controller
public class BaseController {
    private static final Logger logger = LoggerFactory.getLogger(BaseController.class);
    @Autowired
    MenuService menuService;

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

    @RequestMapping("/menu/getMenuList.action")
    @ResponseBody
    public List<Menu> getMenuList() {
        List<Menu> menuList = menuService.getMenuList();
        return menuList;
    }

    @RequestMapping("/godefaultView.action")
    public String godefaultView(HttpServletRequest request) {

        return "default.jsp";
    }


}
