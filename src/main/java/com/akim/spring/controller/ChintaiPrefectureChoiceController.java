package com.akim.spring.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.util.SuumoEnum;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ChintaiPrefectureChoiceController extends SuumoCommonController {

    private void chintaiCommon(ModelAndView mv, HttpServletRequest rq) {
        HttpSession session = rq.getSession();
        Map<String, String> prefectureList = SuumoEnum.PrefectureInfo
                .value(session.getAttribute(AREA_KEY).toString());
        session.setAttribute(PREFECTURE_LIST, prefectureList);
        mv.setViewName(CHINTAI_PREFECTURE_CHOICE);
    }

    @RequestMapping("/chintai/hokkaido/")
    public ModelAndView chintaiHokkaido(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

    @RequestMapping("/chintai/tohoku/")
    public ModelAndView chintaiTohoku(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

    @RequestMapping("/chintai/koshinetsu/")
    public ModelAndView chintaiKoshinetsu(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

    @RequestMapping("/chintai/kanto/")
    public ModelAndView chintaiKanto(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

    @RequestMapping("/chintai/tokai/")
    public ModelAndView chintaiTokai(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

    @RequestMapping("/chintai/chugoku/")
    public ModelAndView chintaiChugoku(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

    @RequestMapping("/chintai/kansai/")
    public ModelAndView chintaiKansai(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

    @RequestMapping("/chintai/shikoku/")
    public ModelAndView chintaiShikoku(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

    @RequestMapping("/chintai/kyush/")
    public ModelAndView chintaiKyush(ModelAndView mv, HttpServletRequest rq) {
        chintaiCommon(mv, rq);
        return mv;
    }

}
