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
public class ChintaiCityController004_1 extends SuumoCommonController {

    private final SuumoRequestUtil ut;
    private final String VIEW = CHINTAI_CITY;

    @RequestMapping(value = "/chintai/*/city/", method = RequestMethod.GET)
    public ModelAndView common(ModelAndView mv, HttpServletRequest rq) {
        ut.setControllerAndView(this.getClass().getName(), mv, VIEW);
        String prefecture = rq.getServletPath().split("/")[2];
        ut.setPrefectureInfoInSession(prefecture);
        return mv;
    }

}
