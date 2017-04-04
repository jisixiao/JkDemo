package com.demo.controller;

import com.demo.controller.base.BaseController;
import com.demo.po.user;
import com.demo.service.userService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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
import java.util.HashMap;
import java.util.Map;

/**
 * Coding......
 * Created by D.SR on 2017/2/20.
 */
@Controller

public class userController {
    private static final Logger logger = LoggerFactory.getLogger(userController.class);


    @Autowired
    userService service;

    @RequestMapping("/getUser.action")
    public String getUser(Model model, HttpServletRequest request, String username, String password) {
        if (username != null && !username.trim().equals("")) {
            user user = service.getUser(username);
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

    @RequestMapping(value = "/checkPassWordValid.action", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String checkPassWordValid(@RequestParam String username,String password) {
        boolean result = false;
        user user = service.getUser(username);

        if (user!= null ){
            if (user.getPassword().equals(password)) {
                result = true;
            }else {
                result = false;
            }
        }
        Map<String, Boolean> map = new HashMap<String, Boolean>();
        map.put("valid", result);
        ObjectMapper mapper = new ObjectMapper();
        String resultString = "";
        try {
            resultString = mapper.writeValueAsString(map);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return resultString;
    }


    @RequestMapping("/json.action")

    public String jsonText(user user, HttpServletRequest request, Model model) {
        System.out.println("==========username :  " + user.getUsername());

        return "index.jsp";
    }
}
