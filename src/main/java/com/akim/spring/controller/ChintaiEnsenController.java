package com.akim.spring.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.dto.MetroDTO;
import com.akim.spring.service.TransportationInfoService;
import com.akim.spring.util.SuumoEnum.PrefectureInfo;
import com.akim.spring.util.SuumoUtil;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ChintaiEnsenController extends SuumoCommonController {

    @Autowired
    TransportationInfoService transportationInfoService;

    @RequestMapping(value = "/chintai/*/ensen/", method = RequestMethod.GET)
    public ModelAndView common(ModelAndView mv, HttpServletRequest rq) {
        String prefecture = rq.getServletPath().split("/")[2];
        HttpSession session = rq.getSession();
        Map<String, String> prefectureInfo = PrefectureInfo.getPrefectureByPrefectureMap(prefecture,
                (Map<String, String>) session.getAttribute(PREFECTURE_LIST));
        session.setAttribute(PREFECTURE_INFO, prefectureInfo);
        String prefectureValue = SuumoUtil.getPreFectureValueByPrefectureInfo(prefectureInfo);
        List<MetroDTO> metroList = transportationInfoService.getTransportationInfo(prefectureValue);
        Map<String, List<MetroDTO>> metroInfoList = new LinkedHashMap<>();
        // 修正必要
        for (MetroDTO metro : metroList) {
            List<MetroDTO> subMetroList = metroList.stream()
                    .filter(t -> t.getRailwayCompany().equals(metro.getRailwayCompany()))
                    .collect(Collectors.toList());
            metroInfoList.put(metro.getRailwayCompany(), subMetroList);
        }

        mv.addObject(TRANSPORTATION_INFO, metroInfoList);
        mv.setViewName(CHINTAI_ENSEN_CHOICE);
        return mv;
    }

}
