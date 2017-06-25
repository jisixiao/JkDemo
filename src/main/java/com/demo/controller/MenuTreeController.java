package com.demo.controller;

import com.demo.base.GlobalVariable;
import com.demo.po.Menu;
import com.demo.utils.ResponseContent;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 菜单树 操作
 * Created by ju_SZ on 2017/4/9.
 */
@RequestMapping("/menuTree")
@Controller
public class MenuTreeController extends BaseController<MenuTreeController> {


    /**
     * 获取 fModuleid 下 子节点的个数
     *
     * @param fModuleid
     * @return
     */
    @RequestMapping("/getfModuleidContent.action")
    @ResponseBody
    public ResponseContent getfModuleidContent(String fModuleid) {
        ResponseContent responseContent = new ResponseContent();
        int content = menuTreeService.getfModuleidContent(fModuleid);
        responseContent.setMsg(ResponseContent.MSG_SUCCEED);
        responseContent.setData(content + "");
        return responseContent;
    }

    /**
     * 获取 父节点的个数
     *
     * @param fParentid
     * @return
     */
    @RequestMapping("/getfParentidContent.action")
    @ResponseBody
    public ResponseContent getfParentidContent(String fParentid) {
        ResponseContent responseContent = new ResponseContent();
        int content = menuTreeService.getfParentidContent(fParentid);
        responseContent.setMsg(ResponseContent.MSG_SUCCEED);
        responseContent.setData(content + "");
        logInfo(this.getClass().getName() + content);
        return responseContent;
    }

    @RequestMapping("/insertfParent.action")
    @ResponseBody
    public void insertfParent(HttpServletRequest request, String fModuleid, String fFullname, boolean isParent) {
        Menu menu = new Menu();
        if (isParent) {
            menu.setfParentid("0");
        }
        menu.setfModuleid(fModuleid);
        menu.setfFullname(fFullname);
        String createUserName = (String) request.getSession().getAttribute(GlobalVariable.SESSION_USERNAME);

        menu.setfCreateusername(createUserName);

    }

}
