package com.demo.controller;

import com.demo.controller.base.Base;
import com.demo.controller.base.BaseController;
import com.demo.po.User;
import com.demo.service.userService;
import com.demo.utils.ResponseContent;
import com.demo.utils.ValidResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by D.SR on 2017/2/20.
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController<UserController> {



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


    @RequestMapping("/login.action")
    @ResponseBody
    public ResponseContent jsonText(String username, String password,
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

                responseContent.setUrl("goHomeView.action");

                request.getSession().setAttribute("userName", username);

            }
        } else {
            responseContent.setCode(ResponseContent.CODE_ERROR_NOUSER);
        }

        return responseContent;
    }
}
