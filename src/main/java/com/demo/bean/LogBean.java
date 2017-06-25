package com.demo.bean;

import java.util.List;
import java.util.Map;

/**
 * log日志实体类
 *
 * @author ju_SZ
 * @create 2017-06-25 21:07
 **/
public class LogBean {

    //请求方法
    public String requestMethod;

    //方法描述
    public String requestMethodDesc;

    //请求人
    public String requestPerson;

    //请求IP
    public String requestIp;

    //请求参数
    public StringBuffer requestParam;

    //请求异常
    public String requestError;

    @Override
    public String toString() {
        return "LogBean{" +
                "requestMethod='" + requestMethod + '\'' +
                ", requestMethodDesc='" + requestMethodDesc + '\'' +
                ", requestPerson='" + requestPerson + '\'' +
                ", requestIp='" + requestIp + '\'' +
                ", requestParam=" + requestParam +
                ", requestError='" + requestError + '\'' +
                '}';
    }

    public String getRequestMethod() {
        return requestMethod;
    }

    public void setRequestMethod(String requestMethod) {
        this.requestMethod = requestMethod;
    }

    public String getRequestMethodDesc() {
        return requestMethodDesc;
    }

    public void setRequestMethodDesc(String requestMethodDesc) {
        this.requestMethodDesc = requestMethodDesc;
    }

    public String getRequestPerson() {
        return requestPerson;
    }

    public void setRequestPerson(String requestPerson) {
        this.requestPerson = requestPerson;
    }

    public String getRequestIp() {
        return requestIp;
    }

    public void setRequestIp(String requestIp) {
        this.requestIp = requestIp;
    }

    public StringBuffer getRequestParam() {
        return requestParam;
    }

    public void setRequestParam(StringBuffer requestParam) {
        this.requestParam = requestParam;
    }

    public String getRequestError() {
        return requestError;
    }

    public void setRequestError(String requestError) {
        this.requestError = requestError;
    }
}
