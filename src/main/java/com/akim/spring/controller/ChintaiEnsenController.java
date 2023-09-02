package com.akim.spring.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.util.SuumoEnum.PrefectureInfo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ChintaiEnsenController extends SuumoCommonController {

    @RequestMapping(value = "/chintai/*/ensen/", method = RequestMethod.GET)
    public ModelAndView common(ModelAndView mv, HttpServletRequest rq) {
        String prefecture = rq.getServletPath().split("/")[2];
        HttpSession session = rq.getSession();
        Map<String, String> prefectureInfo = PrefectureInfo.getPrefectureByPrefectureMap(prefecture,
                (Map<String, String>) session.getAttribute(PREFECTURE_LIST));
        session.setAttribute(PREFECTURE_INFO, prefectureInfo);
        mv.setViewName(CHINTAI_ENSEN_CHOICE);
        return mv;
    }

}
