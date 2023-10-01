package com.akim.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.util.SuumoRequestUtil;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ChintaiCityController extends SuumoCommonController {

    private final SuumoRequestUtil util;

    @RequestMapping(value = "/chintai/*/city/", method = RequestMethod.GET)
    public ModelAndView common(ModelAndView mv, HttpServletRequest rq) {
        System.out.println("ChintaiCityController.common()");
        String prefecture = rq.getServletPath().split("/")[2];
        util.setPrefectureInfoInSession(prefecture);
//        Map<String, String> prefectureInfo = PrefectureInfo.getPrefectureByPrefectureMap(prefecture,
//                (Map<String, String>) session.getAttribute(PREFECTURE_LIST));
//        mv.addObject(PREFECTURE_INFO, prefectureInfo);
        mv.setViewName(Path.CHINTAI_CITY);
        return mv;
    }

}
