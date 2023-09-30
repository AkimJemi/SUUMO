package com.akim.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.service.TransportationInfoService;
import com.akim.spring.util.SuumoSessionUtil;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ChintaiCityController extends SuumoCommonController {

    @Autowired
    private TransportationInfoService transportationInfoService;

    @RequestMapping(value = "/chintai/*/city/", method = RequestMethod.GET)
    public ModelAndView common(ModelAndView mv, HttpServletRequest rq) {
        System.out.println("ChintaiCityController.common()");
        String prefecture = rq.getServletPath().split("/")[2];
        SuumoSessionUtil.setPrefectureInfoInSession(transportationInfoService, prefecture,
                rq.getSession());
//        Map<String, String> prefectureInfo = PrefectureInfo.getPrefectureByPrefectureMap(prefecture,
//                (Map<String, String>) session.getAttribute(PREFECTURE_LIST));
//        mv.addObject(PREFECTURE_INFO, prefectureInfo);
        mv.setViewName(Path.CHINTAI_CITY);
        return mv;
    }

}
