package com.akim.spring.controller;

import java.lang.reflect.Method;

public class SuumoCommonController {

	public static final String RESULT = "result";
	
	
	
	public static String getMethodName() {
	    Method methodName = new Object() {}
	      .getClass()
	      .getEnclosingMethod();

//	      StackWalker walker = StackWalker.getInstance();
//		Optional<String> methodName = walker.walk(frames -> frames
//			      .findFirst()
//			      .map(StackWalker.StackFrame::getMethodName));
		return null;
	}

}
