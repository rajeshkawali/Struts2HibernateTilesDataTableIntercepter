package com.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.opensymphony.xwork2.util.ValueStack;

public class LoginStudentInterceptor implements Interceptor {

	private static final long serialVersionUID = 1L;

	@Override
	public void init() {
		System.out.println("Interceptor init() method called...");

	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {

		System.out.println("This is before invocation.invoke() method call...");
		String className = invocation.getAction().getClass().getName();
		long startTime = System.currentTimeMillis();
		System.out.println("Before calling action: " + className);
		
		
		String result = invocation.invoke();
		
		
		System.out.println("This is after invocation.invoke() method call...");
		long endTime = System.currentTimeMillis();
		System.out.println("After calling action: "+className+" Time taken: "+(endTime-startTime)+" ms");

		// how to use ValueStack in Interceptor= to get the login UN and PW values in intercepter.
		ValueStack stack = invocation.getStack();
		String username = stack.findString("username");
		String password = stack.findString("password");

		System.out.println("UserName in intercepter=username=>" + username);
		System.out.println("Password in intercepter=password=>" + password);

		return result;
	}

	@Override
	public void destroy() {
		System.out.println("Interceptor destroy() method called...");
	}
}
