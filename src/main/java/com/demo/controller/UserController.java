package com.demo.controller;

import com.demo.po.User;
import com.demo.utils.PageBean;
import com.demo.utils.ResponseContent;
import com.demo.utils.ValidResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户操作
 * Created by ju_SZ on 2017/2/20.
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController<UserController> {


    /**
     * 获取指定用户信息
     *
     * @param model
     * @param request
     * @param username
     * @param password
     * @return
     */
    @RequestMapping("/getUser.action")
    public String getUser(Model model, HttpServletRequest request, String username, String password) {
        if (username != null && !username.trim().equals("")) {
            User user = service.getUser(username);
            String passWord = user.getPassword();
            if (passWord.equals(password)) {
                request.getSession().setAttribute("userName", username);
                return "home.jsp";
            } else {
                return "index.jsp";
            }

        } else {
            return "index.jsp";
        }

    }

    /**
     * 检测用户名
     *
     * @param username
     * @return
     */
    @RequestMapping(value = "/checkNameValid.action", produces = "application/json;charset=UTF-8")
    public
    @ResponseBody
    ValidResponse checkNameValid(@RequestParam String username) {
        boolean result = true;
        User user = service.getUser(username);

        if (user == null) {
            result = false;
        }
        ValidResponse response = new ValidResponse();
        response.setValid(result);


        return response;
    }

    /**
     * 检测密码
     *
     * @param username
     * @param password
     * @return
     */
    @RequestMapping(value = "/checkPassWordValid.action", produces = "application/json;charset=UTF-8")
    public
    @ResponseBody
    ValidResponse checkPassWordValid(@RequestParam String username, String password) {
        boolean result = false;
        User user = service.getUser(username);

        if (user != null) {
            if (user.getPassword().equals(password)) {
                result = true;
            } else {
                result = false;
            }
        }


        ValidResponse response = new ValidResponse();
        response.setValid(result);
        return response;
    }


    /**
     * 登入
     *
     * @param username
     * @param password
     * @param request
     * @return
     */

    @RequestMapping("/login.action")
    @ResponseBody
    public ResponseContent login(String username, String password,
                                 HttpServletRequest request) {
        ResponseContent responseContent = new ResponseContent();
        logInfo(this.getClass().getName() + "   ==> username is :" + username);
        logInfo(this.getClass().getName() + "   ==> password is :" + password);
        if (username != null && !username.trim().equals("")) {
            User user = service.getUser(username);
            String passWord = user.getPassword();

            if (passWord.equals(password)) {
                responseContent.setCode(ResponseContent.CODE_SUCCEED);

                responseContent.setMsg(ResponseContent.MSG_SUCCEED);

                responseContent.setUrl("home/goHomeView.action");

                request.getSession().setAttribute("userName", username);
                request.getSession().setAttribute("user", user);

            }
        } else {
            responseContent.setCode(ResponseContent.CODE_ERROR_NOUSER);
        }

        return responseContent;
    }

    /**
     * 退出登入
     *
     * @return
     */
    @RequestMapping("/logout.action")
    @ResponseBody
    public ResponseContent logout(HttpServletRequest request) {

        ResponseContent responseContent = new ResponseContent();
        responseContent.setCode(ResponseContent.CODE_SUCCEED);

        responseContent.setMsg(ResponseContent.MSG_SUCCEED);

        responseContent.setUrl("home/goHomeView.action");

        request.getSession().setAttribute("userName", null);

        return responseContent;
    }


    @RequestMapping("/pagedQueryUser.action")
    @ResponseBody
    public Object pagedQueryUser(HttpServletRequest request , Model model) {
        //http://localhost:8088/user/getAllUser.action?limit=10&start=0&page=1&_=1494313456664 404 (Not Found)
        int size = Integer.parseInt(request.getParameter("limit"));
        int start = Integer.parseInt(request.getParameter("start"));
        int page = Integer.parseInt(request.getParameter("page"));
        String _ = request.getParameter("_");


        Map<String, Object> maps = new HashMap<String, Object>();
        maps.put("size", size);
        maps.put("start", start);

        List<User> users = service.pagedQueryUser(maps);
        List<User> allUser = service.getAllUser();//所有的用户






        ResponseContent responseContent = new ResponseContent();

        int total = allUser.size();


        //=========================pageBean 信息=========================================

        PageBean<User> pageBean = new PageBean<User>();
        //设置当前页
        pageBean.setCurrentPage(page);

        //设置每页显示的记录数
        pageBean.setPageSize(size);

        //设置总记录数
        pageBean.setTotalCount(total);

        pageBean.setData(users);
        //==================================================================

        responseContent.setCode(total);//设置总数
        responseContent.setData(users);
        //request.setAttribute("pageBean",pageBean);
        //model.addAttribute("pageBean",pageBean);


        return responseContent;


    }







}
