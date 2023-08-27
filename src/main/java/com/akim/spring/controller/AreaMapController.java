package com.akim.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.util.SuumoUrl;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AreaMapController extends SuumoCommonController {

	@RequestMapping("/*/")
	public ModelAndView area(ModelAndView mv) {
		System.out.println("AreaMapController.area()");
		mv.setViewName(SuumoUrl.OPTION_PAGE);
		mv.addObject(RESULT, mv.getModel().get("area"));
		return mv;
	}
}
