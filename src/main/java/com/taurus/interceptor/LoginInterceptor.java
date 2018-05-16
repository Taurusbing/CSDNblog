package com.taurus.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.taurus.entity.User;

public class LoginInterceptor implements Interceptor{

	public void destroy() {
		System.out.println("执行destory方法");
	}

	public void init() {
		System.out.println("执行init方法");
	}

	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println(ActionContext.getContext().getSession().get("loginUser"));
		User user= (User)ActionContext.getContext().getSession().get("loginUser");
		if(user != null) {
			return invocation.invoke();
		}else {
			return "error";
		}
	}

}
