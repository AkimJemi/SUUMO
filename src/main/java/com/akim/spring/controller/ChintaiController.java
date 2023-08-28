package com.akim.spring.controller;

import java.lang.reflect.Method;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.util.SuumoUrl;
import com.akim.spring.util.SuumoUtil;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ChintaiController extends SuumoCommonController {

	private void chintaiCommon(ModelAndView mv, HttpServletRequest rq, Method method) {
		System.out.println("ChintaiController.chintaiCommon()");
		System.out.printf("ChintaiController.%s()\n", method.getName());
		String servletPath = rq.getServletPath();
		mv.addObject(SuumoUtil.AREA_VALUE, SuumoUtil.getAreaValue(servletPath));
		mv.addObject(SuumoUtil.AREA_KEY, SuumoUtil.getAreaKey(servletPath));
		mv.setViewName(SuumoUrl.CHINTAI_OPTION);
	}

	@RequestMapping("/chintai/hokkaido/")
	public ModelAndView chintaiHokkaido(ModelAndView mv, HttpServletRequest rq) {
		chintaiCommon(mv, rq, new Object() {}.getClass().getEnclosingMethod());
		return mv;
	}

	@RequestMapping("/chintai/tohoku/")
	public ModelAndView chintaiTohoku(ModelAndView mv, HttpServletRequest rq) {
		chintaiCommon(mv, rq, new Object() {}.getClass().getEnclosingMethod());
		return mv;
	}

	@RequestMapping("/chintai/koshinetsu/")
	public ModelAndView chintaiKoshinetsu(ModelAndView mv, HttpServletRequest rq) {
		chintaiCommon(mv, rq, new Object() {}.getClass().getEnclosingMethod());
		return mv;
	}

	@RequestMapping("/chintai/kanto/")
	public ModelAndView chintaiKanto(ModelAndView mv, HttpServletRequest rq) {
		chintaiCommon(mv, rq, new Object() {}.getClass().getEnclosingMethod());
		return mv;
	}

	@RequestMapping("/chintai/tokai/")
	public ModelAndView chintaiTokai(ModelAndView mv, HttpServletRequest rq) {
		chintaiCommon(mv, rq, new Object() {}.getClass().getEnclosingMethod());
		return mv;
	}

	@RequestMapping("/chintai/chugoku/")
	public ModelAndView chintaiChugoku(ModelAndView mv, HttpServletRequest rq) {
		chintaiCommon(mv, rq, new Object() {}.getClass().getEnclosingMethod());
		return mv;
	}

	@RequestMapping("/chintai/kansai/")
	public ModelAndView chintaiKansai(ModelAndView mv, HttpServletRequest rq) {
		chintaiCommon(mv, rq, new Object() {}.getClass().getEnclosingMethod());
		return mv;
	}

	@RequestMapping("/chintai/shikoku/")
	public ModelAndView chintaiShikoku(ModelAndView mv, HttpServletRequest rq) {
		chintaiCommon(mv, rq, new Object() {}.getClass().getEnclosingMethod());
		return mv;
	}

	@RequestMapping("/chintai/kyush/")
	public ModelAndView chintaiKyush(ModelAndView mv, HttpServletRequest rq) {
		chintaiCommon(mv, rq, new Object() {}.getClass().getEnclosingMethod());
		return mv;
	}

}
