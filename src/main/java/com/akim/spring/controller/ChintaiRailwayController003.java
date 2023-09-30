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

import com.akim.spring.dto.AreaPrefectureDTO;
import com.akim.spring.dto.PrefectureBasicInfoDTO;
import com.akim.spring.dto.RailwayDTO;
import com.akim.spring.service.TransportationInfoService;
import com.akim.spring.util.SuumoSessionUtil;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ChintaiRailwayController003 extends SuumoCommonController {

    @Autowired
    private TransportationInfoService transportationInfoService;

    private ModelAndView common(ModelAndView mv, HttpServletRequest rq, String prefecture) {
        System.out.println("ChintaiRailwayController003.common()");

        List<RailwayDTO> railwayList = transportationInfoService
                .getRailwayInfoByPrefecture(prefecture);

        Map<String, List<RailwayDTO>> railwayInfoList = new LinkedHashMap<>();
        for (RailwayDTO railway : railwayList) {
            List<RailwayDTO> subMetroList = railwayList.stream()
                    .filter(t -> t.getRailwayCompanyName().equals(railway.getRailwayCompanyName()))
                    .collect(Collectors.toList());
            railwayInfoList.put(railway.getRailwayCompanyName(), subMetroList);
        }
        SuumoSessionUtil.setPrefectureInfoInSession(transportationInfoService, prefecture,
                rq.getSession());
        mv.addObject(Variables.RAILWAY_LIST, railwayInfoList);
        mv.setViewName(Path.CHINTAI_ENSEN);
        return mv;
    }

    @RequestMapping(value = "/chintai/*/ensen/", method = RequestMethod.GET)
    public ModelAndView init(ModelAndView mv, HttpServletRequest rq) {
        String prefecture = rq.getServletPath().split("/")[2];
        return common(mv, rq, prefecture);
    }

    @RequestMapping(value = "/jj/chintai/kensaku/FR301FB003/", method = RequestMethod.GET)
    public ModelAndView sub(ModelAndView mv, HttpServletRequest rq) {
        String paramOfPrefectureNo = rq.getParameter("ra");
        AreaPrefectureDTO prefecture = transportationInfoService
                .getAreaPrefectureInfoByPrefectureNo(paramOfPrefectureNo);
        return common(mv, rq, prefecture.getPrefecture());
    }

}
