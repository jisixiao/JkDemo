package com.demo.controller;

import com.demo.po.Menu;
import com.demo.utils.ResponseContent;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 页面跳转基础页
 * Created by ju_SZ on 2017/3/30.
 */
@Controller
@RequestMapping("/home")
public class HomeController extends BaseController<HomeController> {


    /**
     * 跳转 主页面
     *
     * @param request
     * @return
     */
    @RequestMapping("/goHomeView.action")
    public String goHomeView(HttpServletRequest request) {

        String userNamme = (String) request.getSession().getAttribute("userName");

        if (userNamme != null && !userNamme.equals("")) {
            return "home.jsp";
        } else {
            return "index.jsp";
        }
    }

    /**
     * 跳转登入页面
     *
     * @return
     */
    @RequestMapping("/goLoginView.action")
    public String goLoginView() {
        return "index.jsp";
    }

    /**
     * 获取Menu菜单
     *
     * @return
     */
    @RequestMapping("/menu/getMenuList.action")
    @ResponseBody
    public List<Menu> getMenuList() {
        List<Menu> menuList = menuService.getMenuList();
        return menuList;
    }

    /**
     * 跳转主页面
     *
     * @param request
     * @return
     */
    @RequestMapping("/godefaultView.action")
    public String godefaultView(HttpServletRequest request) {

        return "default.jsp";
    }

    /**
     * 跳转 个人信息页面
     *
     * @return
     */
    @RequestMapping("/goUserInfoView.action")
    public String goUserInfoView() {
        return "UserInfo.jsp";
    }

    /**
     * 跳转到菜单树页面
     * @return
     */
    @RequestMapping("/goTreeView.action")
    public String goTreeView(){

        return "TreeView.jsp";
    }

}
