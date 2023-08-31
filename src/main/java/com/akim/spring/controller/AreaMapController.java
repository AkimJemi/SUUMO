package com.akim.spring.controller;

import java.lang.reflect.Method;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.util.SuumoUrl;
import com.akim.spring.util.SuumoUtil;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AreaMapController extends SuumoCommonController {

    private void areaMapCommon(ModelAndView mv, HttpServletRequest rq, Method method) {
        System.out.println("AreaMapController.areaMapCommon()");
        System.out.printf("AreaMapController.%s()\n", method.getName());
        String servletPath = rq.getServletPath();
        mv.addObject(SuumoUtil.AREA_VALUE, SuumoUtil.getAreaValue(servletPath));
        mv.addObject(SuumoUtil.AREA_KEY, SuumoUtil.getAreaKey(servletPath));
        mv.setViewName(SuumoUrl.AREA_OPTION);
    }

    @RequestMapping("/hokkaido/")
    public ModelAndView hokkaido(ModelAndView mv, HttpServletRequest rq) {
        areaMapCommon(mv, rq, new Object() {
        }.getClass().getEnclosingMethod());
        return mv;
    }

    @RequestMapping("/tohoku/")
    public ModelAndView tohoku(ModelAndView mv, HttpServletRequest rq) {
        areaMapCommon(mv, rq, new Object() {
        }.getClass().getEnclosingMethod());
        return mv;
    }

    @RequestMapping("/koshinetsu/")
    public ModelAndView koshinetsu(ModelAndView mv, HttpServletRequest rq) {
        areaMapCommon(mv, rq, new Object() {
        }.getClass().getEnclosingMethod());
        return mv;
    }

    @RequestMapping("/kanto/")
    public ModelAndView kanto(ModelAndView mv, HttpServletRequest rq) {
        areaMapCommon(mv, rq, new Object() {
        }.getClass().getEnclosingMethod());
        return mv;
    }

    @RequestMapping("/tokai/")
    public ModelAndView tokai(ModelAndView mv, HttpServletRequest rq) {
        areaMapCommon(mv, rq, new Object() {
        }.getClass().getEnclosingMethod());
        return mv;
    }

    @RequestMapping("/chugoku/")
    public ModelAndView chugoku(ModelAndView mv, HttpServletRequest rq) {
        areaMapCommon(mv, rq, new Object() {
        }.getClass().getEnclosingMethod());
        return mv;
    }

    @RequestMapping("/kansai/")
    public ModelAndView kansai(ModelAndView mv, HttpServletRequest rq) {
        areaMapCommon(mv, rq, new Object() {
        }.getClass().getEnclosingMethod());
        return mv;
    }

    @RequestMapping("/shikoku/")
    public ModelAndView shikoku(ModelAndView mv, HttpServletRequest rq) {
        areaMapCommon(mv, rq, new Object() {
        }.getClass().getEnclosingMethod());
        return mv;
    }

    @RequestMapping("/kyushu/")
    public ModelAndView kyushu(ModelAndView mv, HttpServletRequest rq) {
        areaMapCommon(mv, rq, new Object() {
        }.getClass().getEnclosingMethod());
        return mv;
    }

}
