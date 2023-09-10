package com.akim.spring.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.dto.PrefectureBasicInfoDTO;
import com.akim.spring.dto.RailwayDTO;
import com.akim.spring.service.TransportationInfoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ChintaiRailwayController003 extends SuumoCommonController {

    @Autowired
    private TransportationInfoService transportationInfoService;

    @RequestMapping(value = "/chintai/*/ensen/", method = RequestMethod.GET)
    public ModelAndView common(ModelAndView mv, HttpServletRequest rq) {
        System.out.println("ChintaiPrefectureEnsenController004.common()");
        String prefecture = rq.getServletPath().split("/")[2];
//        HttpSession session = rq.getSession();
//        Map<String, String> prefectureInfo = PrefectureInfo.getPrefectureByPrefectureMap(prefecture,
//                (List<PrefectureBasicInfoDTO>) session.getAttribute(PREFECTURE_LIST));
//        session.setAttribute(PREFECTURE_INFO, prefectureInfo);
//        String prefectureValue = SuumoUtil.getPreFectureValueByPrefectureInfo(prefectureInfo);
//        List<RailwayDTO> metroList = transportationInfoService.getTransportationInfo(prefectureValue);
        List<RailwayDTO> railwayList = transportationInfoService
                .getRailwayInfoByPrefecture(prefecture);
        Map<String, List<RailwayDTO>> railwayInfoList = new LinkedHashMap<>();
//         修正必要
        for (RailwayDTO railway : railwayList) {
            List<RailwayDTO> subMetroList = railwayList.stream()
                    .filter(t -> t.getRailwayCompanyName().equals(railway.getRailwayCompanyName()))
                    .collect(Collectors.toList());
            railwayInfoList.put(railway.getRailwayCompanyName(), subMetroList);
        }
        HttpSession session = rq.getSession();
        PrefectureBasicInfoDTO prefectureBasicInfo = transportationInfoService
                .getPrefectureBasicInfoByPrefecture(prefecture);
        session.setAttribute(PREFECTURE_NO, prefectureBasicInfo.getPrefectureNo());
        session.setAttribute(PREFECTURE, prefecture);
        session.setAttribute(PREFECTURE_NAME, prefectureBasicInfo.getPrefectureName());

        mv.addObject(RAILWAY_LIST, railwayInfoList);
        mv.setViewName(CHINTAI_ENSEN_CHOICE);
        return mv;
    }

}
