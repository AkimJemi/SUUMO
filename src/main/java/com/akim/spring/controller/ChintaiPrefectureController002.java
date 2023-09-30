package com.akim.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.dto.PrefectureBasicInfoDTO;
import com.akim.spring.service.TransportationInfoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ChintaiPrefectureController002 extends SuumoCommonController {

    @Autowired
    private TransportationInfoService transportationInfoService;

    private void chintaiCommon(ModelAndView mv, HttpServletRequest rq) {
        System.out.println("ChintaiPrefectureController002.chintaiCommon()");
        HttpSession session = rq.getSession();
        List<PrefectureBasicInfoDTO> prefectureBasicInfoList = transportationInfoService
                .getPrefectureBasicInfoListByArea(session.getAttribute(Variables.AREA).toString());
        session.setAttribute(Variables.PREFECTURE_LIST, prefectureBasicInfoList);

        String areaName = session.getAttribute(Variables.AREA_NAME).toString();
        mv.addObject(Variables.DESC_TITLE, "SUUMO(スーモ)は、%sの住宅・不動産購入や売買をサポートする住宅情報サイトです。".formatted(areaName));
        mv.setViewName(Path.CHINTAI_PREFECTURE);
    }

    @RequestMapping("/chintai/*/")
    public ModelAndView chintaiHokkaido(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

//    @RequestMapping("/chintai/tohoku/")
    public ModelAndView chintaiTohoku(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

//    @RequestMapping("/chintai/koshinetsu/")
    public ModelAndView chintaiKoshinetsu(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

//    @RequestMapping("/chintai/kanto/")
    public ModelAndView chintaiKanto(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

//    @RequestMapping("/chintai/tokai/")
    public ModelAndView chintaiTokai(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

//    @RequestMapping("/chintai/chugoku/")
    public ModelAndView chintaiChugoku(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

//    @RequestMapping("/chintai/kansai/")
    public ModelAndView chintaiKansai(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

//    @RequestMapping("/chintai/shikoku/")
    public ModelAndView chintaiShikoku(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

//    @RequestMapping("/chintai/kyush/")
    public ModelAndView chintaiKyush(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

}
