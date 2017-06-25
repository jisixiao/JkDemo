package com.demo.controller;

import com.demo.base.GlobalVariable;
import com.demo.po.Menu;
import com.demo.po.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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

        String userNamme = (String) request.getSession().getAttribute(GlobalVariable.SESSION_USERNAME);

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
    public List<Menu> getMenuList(HttpServletRequest request) {
        List<Menu> menuList = menuService.getMenuList();

        /**
        User user = (User) request.getSession().getAttribute("user");
        String authority = user.getAuthority();
        if (authority.equals("0"))
            return menuList;
        else if (authority.equals("1")) {
            List<Menu> au_Menu = new ArrayList<Menu>();

            for (Menu menu : menuList) {
                logInfo("HomeController ================fFullname  is >>>>>>>>>" + menu.getfFullname());
                logInfo("HomeController ================Authority  is >>>>>>>>>" + menu.getAuthority());
                String menu_authority = menu.getAuthority();
                if (("1").equals(menu_authority)){
                    au_Menu.add(menu);
                }

            }
            return  au_Menu;

        }
**/

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
     *
     * @return
     */
    @RequestMapping("/goTreeView.action")
    public String goTreeView() {

        //return "TreeView.jsp";
        return "DepartmentMang.jsp";
    }

    /**
     * 跳转到管理用户信息页面
     *
     * @return
     */
    @RequestMapping("/goUserMsgMagView.action")
    public String goUserMsgMagView() {

        return "Text.jsp";
    }

}
