package com.demo.controller;

import com.demo.base.GlobalVariable;
import com.demo.po.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 邮件发送
 *
 * @author ju_SZ
 * @create 2017-06-11 21:16
 **/

@Controller
@RequestMapping("/email")
public class EmailController extends BaseController<EmailController> {


    /**
     * 跳转Email 编辑页面
     *
     * @return
     */
    @RequestMapping("/editor")
    public String SendEmail(HttpServletRequest request) {

        String UserName = (String) request.getSession().getAttribute(GlobalVariable.SESSION_USERNAME);
        User user = userService.getUser(UserName);
        String email = user.getEmail();
        request.setAttribute("email",email);
        logInfo(this.getClass().getName() + "跳转邮件编辑页面");
        return "email_editer.jsp";
    }

}
