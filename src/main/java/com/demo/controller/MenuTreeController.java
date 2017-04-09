package com.demo.controller;

import com.demo.utils.ResponseContent;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 菜单树 操作
 * Created by ju_SZ on 2017/4/9.
 */
@RequestMapping("/menuTree")
public class MenuTreeController extends BaseController<MenuTreeController> {


    /**
     * 获取 fModuleid 下 子节点的个数
     * @param fModuleid
     * @return
     */
    @RequestMapping("/getfModuleidContent")
    @ResponseBody
    public ResponseContent getfModuleidContent(String fModuleid){
        ResponseContent responseContent = new ResponseContent();
        int content = menuTreeService.getfModuleidContent(fModuleid);
        responseContent.setMsg(ResponseContent.MSG_SUCCEED);
        responseContent.setData(content+"");
        return  responseContent;
    }

    /**
     * 获取 父节点的个数
     * @param fParentid
     * @return
     */
    @RequestMapping("/getfParentidContent")
    @ResponseBody
    public ResponseContent getfParentidContent(String fParentid){
        ResponseContent responseContent = new ResponseContent();
        int content = menuTreeService.getfModuleidContent(fParentid);
        responseContent.setMsg(ResponseContent.MSG_SUCCEED);
        responseContent.setData(content+"");
        return  responseContent;
    }

}
