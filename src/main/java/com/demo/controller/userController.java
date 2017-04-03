package com.demo.controller;

import com.demo.po.user;
import com.demo.service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Coding......
 * Created by D.SR on 2017/2/20.
 */
@Controller

public class userController {

    @Autowired
    userService service;

    @RequestMapping("/getUser.action")
    public String getUser( Model model,HttpServletRequest request, String username, String password) {
        System.out.println("==========  admin  ====  " + username);
        if (username != null && !username.trim().equals("")) {
            user user = service.getUser(username);
            String passWord = user.getPassword();
            if (passWord.equals(password)) {
                request.getSession().setAttribute("userName", username);
                System.out.println("==========  pass  ====  " + passWord);
                return "home.jsp";
            }else {
                return  "index.jsp";
            }

        } else {
            return "index.jsp";
        }

    }

    @RequestMapping("/json.action")

    public String jsonText(user user, HttpServletRequest request, Model model) {
        System.out.println("==========username :  " + user.getUsername());

        return "index.jsp";
    }
}
