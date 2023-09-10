package com.akim.spring.controller;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.dao.TransportationInfoDAO;
import com.akim.spring.service.TransportationInfoService;
import com.akim.spring.util.SuumoUtil;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ChintaiAreaController001 extends SuumoCommonController {

    @Autowired
    private TransportationInfoService transportationInfoService;

    @GetMapping("")
    public String main() {
        System.out.println("AreaChoiceController001.main()");
        return AREA_CHOICE;
    }

    private void areaMapCommon(ModelAndView mv, HttpServletRequest rq, Method method) {
        System.out.println("AreaOptionController002.areaMapCommon()");
        String servletPath = rq.getServletPath();
        String areaKey = SuumoUtil.getAreaKey(servletPath);
        String areaValue = SuumoUtil.getAreaValue(servletPath);
        mv.addObject(AREA, areaKey);
        mv.addObject(AREA_NAME, areaValue);
        HttpSession session = rq.getSession();
        String areaNo = transportationInfoService.getAreaNoByArea(areaKey);
        session.setAttribute(AREA, areaKey);
        session.setAttribute(AREA_NAME, areaValue);
        session.setAttribute(AREA_NO, areaNo);
        session.setAttribute(BS, CHINTAI_VAL);
        mv.setViewName(AREA_OPTION);
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
