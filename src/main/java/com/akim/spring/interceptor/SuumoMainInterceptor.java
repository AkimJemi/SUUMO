package com.akim.spring.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.util.SuumoUtil;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Configuration
public class SuumoMainInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("SuumoMainInterceptor.preHandle()");
		System.out.println(request.getContextPath());
		return HandlerInterceptor.super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("SuumoMainInterceptor.postHandle()");
		modelAndView.addObject(SuumoUtil.AREA_VALUE, SuumoUtil.getAreaValue(request.getServletPath()));
		modelAndView.addObject(SuumoUtil.AREA_KEY, SuumoUtil.getAreaKey(request.getServletPath()));
		
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("SuumoMainInterceptor.afterCompletion()");
		System.out.println(request.getContextPath());
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}
}
