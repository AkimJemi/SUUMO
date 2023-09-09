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
public class ChintaiCityController extends SuumoCommonController {

    @RequestMapping(value = "/chintai/*/city/", method = RequestMethod.GET)
    public ModelAndView common(ModelAndView mv, HttpServletRequest rq) {
        System.out.println("ChintaiCityController.common()");
        String prefecture = rq.getServletPath().split("/")[2];
        HttpSession session = rq.getSession();
        Map<String, String> prefectureInfo = PrefectureInfo.getPrefectureByPrefectureMap(prefecture,
                (Map<String, String>) session.getAttribute(PREFECTURE_LIST));
        mv.addObject(PREFECTURE_INFO, prefectureInfo);
        mv.setViewName(CHINTAI_CITY_CHOICE);
        return mv;
    }

}
