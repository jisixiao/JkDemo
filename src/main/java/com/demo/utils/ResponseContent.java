package com.demo.utils;

/**
 * Json 数据封装
 * Created by jisixiao on 2017/4/4.
 */
public class ResponseContent {
    /**
     * 没有找到用户
     */
    public static final int CODE_ERROR_NOUSER= 0000;
    public static final String MSG_ERROR_NOUSER = "没有找到用户";
    /**
     * 成功
     */
    public static final int CODE_SUCCEED = 200;
    public static final String MSG_SUCCEED = "成功";
    /**
     * 密码错误
     */
    public static final int CODE_ERROR_PASSWORD = 0001;
    public static final String MSG_ERROR_PASSWORD ="密码错误";

    private Object data;

    private String msg;

    private String url;

    private String dataType;

    private int code;


    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDataType() {
        return dataType;
    }

    public void setDataType(String dataType) {
        this.dataType = dataType;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
