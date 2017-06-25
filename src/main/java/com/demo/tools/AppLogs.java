package com.demo.tools;

import com.demo.base.GlobalVariable;
import com.demo.bean.LogBean;
import com.demo.controller.base.Base;
import com.demo.utils.JsonUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/**
 * 操作日志
 *
 * @author ju_SZ
 * @create 2017-06-18 21:26
 **/
@Aspect
@Component
public class AppLogs extends Base<AppLogs> {

    //private  static  final Logger logger = LoggerFactory.getLogger(AppLogs. class);


    /**
     *
     */
    @Pointcut("execution(* com.demo.service..*.*(..))")
    public void serviceAspect() {
    }

    @Pointcut("execution(* com.demo.controller..*.*(..))")
    public void controllerAspect() {
    }


    /**
     * joinPoint 连接点 程序执行的明确点
     *
     * @param joinPoint
     */

    @Before("serviceAspect()")
    public void before (JoinPoint joinPoint){
        logInfo("目标方法名为 :" + joinPoint.getSignature().getName());

        logInfo("目标方法所属类的简单类名 :"
                + joinPoint.getSignature().getDeclaringType().getSimpleName());
        logInfo("目标方法所属类的类名:" + joinPoint.getSignature().getDeclaringTypeName());

        logInfo("目标方法声明类型:" + Modifier
                .toString(joinPoint.getSignature().getModifiers()));

        //获取传入目标方法的参数
        Object[] args = joinPoint.getArgs();
        for (int i = 0; i < args.length; i++) {
            if (args.length<2)
           logInfo("参数为:" + args[i]);
            else
           logInfo("第" + (i+1) + "个参数为:" + args[i]);
        }
        logInfo("被代理的对象:" + joinPoint.getTarget());
        logInfo("代理对象自己:" + joinPoint.getThis());

    }

    @Before("controllerAspect()")
    public void Cdobefore(JoinPoint joinPoint) {
        getLog(joinPoint);

    }

    @AfterThrowing(pointcut = "serviceAspect()", throwing = "e")
    public void CdoAfterThrowing(JoinPoint joinPoint, Throwable e) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        HttpSession session = request.getSession();
        //读取session中的用户
        String userName = (String) session.getAttribute(GlobalVariable.SESSION_USERNAME);
        //获取请求ip
        String ip = request.getRemoteAddr();
        //获取用户请求方法的参数并序列化为JSON格式字符串
        StringBuffer params = new StringBuffer();
        if (joinPoint.getArgs() != null && joinPoint.getArgs().length > 0) {
            for (int i = 0; i < joinPoint.getArgs().length; i++) {
                /**
                 * 设置json数据
                 */
                params.append(joinPoint.getArgs()[i] + ";");
            }
        }
        try {
              /*========控制台输出=========*/
            System.out.println("=====异常通知开始=====");
            System.out.println("异常代码:" + e.getClass().getName());
            System.out.println("异常信息:" + e.getMessage());
            System.out.println("异常方法:" + (joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()"));
            //System.out.println("方法描述:" + getServiceMthodDescription(joinPoint));
            System.out.println("请求人:" + userName);
            System.out.println("请求IP:" + ip);
            System.out.println("请求参数:" + params);

            System.out.println("=====异常通知结束=====");
        } catch (Exception ex) {
            //记录本地异常日志
           logInfo("==异常通知异常==");
            logErro("异常信息:{}", ex.getMessage());
        }
         /*==========记录本地异常日志==========*/

        //logErro("异常方法:{}异常代码:{}异常信息:{}参数:{}", joinPoint.getTarget().getClass().getName() + joinPoint.getSignature().getName(), e.getClass().getName(), e.getMessage(), params);

    }



    private void getLog(JoinPoint joinPoint) {
        LogBean logBean = new LogBean();
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        HttpSession session = request.getSession();
        //获取session用户名
        String requestPerson = (String) session.getAttribute(GlobalVariable.SESSION_USERNAME);
        //获取IP
        String ip = request.getRemoteAddr();
        //请求方法
        String requestMethod = (joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()");
        //方法描述
        //String requestMethodDesc = getControllerMethodDescription(joinPoint);
        //方法参数
        StringBuffer requestParam = new StringBuffer();
        //错误信息
        String requestError = "";
        try {
            logInfo("请求方法:" + (joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()"));
            //logInfo("方法描述:" + getControllerMethodDescription(joinPoint));
            logInfo("请求人:" + requestPerson);
            logInfo("请求IP:" + ip);
            logInfo("目标方法名为 :" + joinPoint.getSignature().getName());

            logInfo("目标方法所属类的简单类名 :"
                    + joinPoint.getSignature().getDeclaringType().getSimpleName());
            logInfo("目标方法所属类的类名:" + joinPoint.getSignature().getDeclaringTypeName());

            logInfo("目标方法声明类型:" + Modifier
                    .toString(joinPoint.getSignature().getModifiers()));

            //获取传入目标方法的参数
            Object[] args = joinPoint.getArgs();
            for (int i = 0; i < args.length; i++) {

                if (args.length < 2) {
                    logInfo("参数为:" + args[i]);
                    requestParam.append(args[i]);
                } else {
                    logInfo("第" + (i + 1) + "个参数为:" + args[i]);
                    requestParam.append(args[i] + ";");
                }
            }
            logInfo("被代理的对象:" + joinPoint.getTarget());
            logInfo("代理对象自己:" + joinPoint.getThis());

            logBean.setRequestIp(ip);
            logBean.setRequestMethod(requestMethod);
            //logBean.setRequestMethodDesc(requestMethodDesc);
            logBean.setRequestParam(requestParam);

            JsonUtils.objectToJson(logBean);
        } catch (Exception e) {
            //记录本地异常日志
            logInfo("==前置通知异常==");
            logErro("异常信息:{}", e.getMessage());
            requestError = e.getMessage();
            JsonUtils.objectToJson(logBean);
        }

    }


}
