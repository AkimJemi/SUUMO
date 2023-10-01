package com.akim.spring.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.dto.AreaPrefectureDTO;
import com.akim.spring.util.SuumoRequestUtil;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ChintaiPrefectureController002 extends SuumoCommonController {

    private final SuumoRequestUtil ut;

    private void chintaiCommon(ModelAndView mv) {
        ut.setController(this.getClass().getName());
        List<AreaPrefectureDTO> prefectureBasicInfoList = ut.getTransportationInfoService()
                .getPrefectureBasicInfoListByArea(ut.getAttribute(Variables.AREA));
        ut.setAttribute(Variables.PREFECTURE_LIST, prefectureBasicInfoList);
        String areaName = ut.getAttribute(Variables.AREA_NAME);
        mv.addObject(Variables.DESC_TITLE, "SUUMO(スーモ)は、%sの住宅・不動産購入や売買をサポートする住宅情報サイトです。".formatted(areaName));
        mv.setViewName(Path.CHINTAI_PREFECTURE);
    }

    @RequestMapping("/chintai/*/")
    public ModelAndView chintaiHokkaido(ModelAndView mv) {
        chintaiCommon(mv);
        return mv;
    }

//    @RequestMapping("/chintai/tohoku/")
    public ModelAndView chintaiTohoku(ModelAndView mv) {
        chintaiCommon(mv);
        return mv;
    }

//    @RequestMapping("/chintai/koshinetsu/")
    public ModelAndView chintaiKoshinetsu(ModelAndView mv) {
        chintaiCommon(mv);
        return mv;
    }

//    @RequestMapping("/chintai/kanto/")
    public ModelAndView chintaiKanto(ModelAndView mv) {
        chintaiCommon(mv);
        return mv;
    }

//    @RequestMapping("/chintai/tokai/")
    public ModelAndView chintaiTokai(ModelAndView mv) {
        chintaiCommon(mv);
        return mv;
    }

//    @RequestMapping("/chintai/chugoku/")
    public ModelAndView chintaiChugoku(ModelAndView mv) {
        chintaiCommon(mv);
        return mv;
    }

//    @RequestMapping("/chintai/kansai/")
    public ModelAndView chintaiKansai(ModelAndView mv) {
        chintaiCommon(mv);
        return mv;
    }

//    @RequestMapping("/chintai/shikoku/")
    public ModelAndView chintaiShikoku(ModelAndView mv) {
        chintaiCommon(mv);
        return mv;
    }

//    @RequestMapping("/chintai/kyush/")
    public ModelAndView chintaiKyush(ModelAndView mv) {
        chintaiCommon(mv);
        return mv;
    }

}
