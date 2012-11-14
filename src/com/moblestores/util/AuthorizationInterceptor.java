package com.moblestores.util;

import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;



import com.moblestores.po.UserInfo;
import com.opensymphony.xwork2.Action;

import com.opensymphony.xwork2.ActionInvocation;

import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

 

/**

 * 权限检查拦截器

 *

 * @author qiujy

 * @version 1.0

 */

public class AuthorizationInterceptor extends AbstractInterceptor {

    /*

     * 拦截Action处理的拦截方法

     *

     */

    public String intercept(ActionInvocation invocation) throws Exception {
 
    	
//         Map session = invocation.getInvocationContext().getSession();
//         String userName = (String) session.get("username");
        HttpSession session = ServletActionContext.getRequest().getSession(); 
         String userName = (String) session.getAttribute("username");
       
        if (null != userName) {

            System.out.println("拦截器：合法用户登录---");

            return invocation.invoke();

        } else {

            System.out.println("拦截器：用户未登录---");

            return Action.LOGIN;

        }

    }

}
