package com.akim.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.common.SuumoCommon.Path;
import com.akim.spring.common.SuumoCommon.Variables;
import com.akim.spring.dto.AreaPrefectureDTO;
import com.akim.spring.util.SuumoRequestUtil;
import com.akim.spring.util.SuumoUtil;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ChintaiAreaController001 extends SuumoCommonController {

    private final SuumoRequestUtil ut;
    private String view = Path.AREA_OPTION;

    @GetMapping("")
    public String main() {
        ut.setControllerAndView(this.getClass().getName(), view);
        return Path.AREA_CHOICE;
    }

    private void areaMapCommon(ModelAndView mv) {
        System.out.println("AreaOptionController002.areaMapCommon()");
        String servletPath = ut.getRq().getServletPath();
        String area = SuumoUtil.getAreaKey(servletPath);
        ut.setAreaInfoInSession(area);
        mv.addObject(Variables.AREA, area);
        mv.setViewName(Path.AREA_OPTION);
    }

    @RequestMapping("/*/")
    @ResponseBody
    public ModelAndView hokkaido(ModelAndView mv) {
        areaMapCommon(mv);
        return mv;
    }

//    @RequestMapping("/tohoku/")
    public ModelAndView tohoku(ModelAndView mv) {
//        areaMapCommon(mv, rq, new Object() {
//        }.getClass().getEnclosingMethod());
        areaMapCommon(mv);
        return mv;
    }

//    @RequestMapping("/koshinetsu/")
    public ModelAndView koshinetsu(ModelAndView mv) {
        areaMapCommon(mv);
        return mv;
    }

//    @RequestMapping("/kanto/")
    public ModelAndView kanto(ModelAndView mv) {
        areaMapCommon(mv);
        return mv;
    }

//    @RequestMapping("/tokai/")
    public ModelAndView tokai(ModelAndView mv) {
        areaMapCommon(mv);
        return mv;
    }

//    @RequestMapping("/chugoku/")
    public ModelAndView chugoku(ModelAndView mv) {
        areaMapCommon(mv);
        return mv;
    }

//    @RequestMapping("/kansai/")
    public ModelAndView kansai(ModelAndView mv) {
        areaMapCommon(mv);
        return mv;
    }

//    @RequestMapping("/shikoku/")
    public ModelAndView shikoku(ModelAndView mv) {
        areaMapCommon(mv);
        return mv;
    }

//    @RequestMapping("/kyushu/")
    public ModelAndView kyushu(ModelAndView mv) {
        areaMapCommon(mv);
        return mv;
    }
}
