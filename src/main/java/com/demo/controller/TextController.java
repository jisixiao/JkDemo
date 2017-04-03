package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Coding......
 * Created by jisixiao on 2017/3/22.
 */
@Controller
public class TextController {

    @RequestMapping("/demoText.action")
    public String demoText(String sex,String chi,String wan,String re, Model model){


        System.out.println(sex);
System.out.println(chi);
        model.addAttribute("sex",sex);
        model.addAttribute("chi",chi);
        model.addAttribute("re",re);
        return "index.jsp";
    }
}
