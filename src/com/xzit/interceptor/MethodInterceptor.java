package com.xzit.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class MethodInterceptor extends MethodFilterInterceptor {

	@Override
	/*
	 * 对未登录用户拦截
	 */
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		ActionContext ctx = invocation.getInvocationContext();
		Map<String, Object> session = ctx.getSession();
		// 取出名为user的Session属性
		if (session == null || session.get("account") == null) {
			// 没有登陆，将服务器提示设置成一个HttpServletRequest属性
			ctx.put("tip", "您还没有登陆，请先登陆系统");
			// 直接返回login的逻辑视图
			return "out";
			
		}
		return invocation.invoke();
	}

}
