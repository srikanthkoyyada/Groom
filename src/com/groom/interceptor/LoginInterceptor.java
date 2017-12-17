package com.groom.interceptor;

import java.util.Map;

import com.groom.bean.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor { 

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> session = invocation.getInvocationContext()
				.getSession();

		User user = (User) session.get("user");

		if (user == null) {
			return Action.LOGIN;
		} else {
			return invocation.invoke();
		}
	}
}
