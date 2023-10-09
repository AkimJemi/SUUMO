package com.akim.spring.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.dto.AreaPrefectureDTO;
import com.akim.spring.dto.RailwayDTO;
import com.akim.spring.util.SuumoRequestUtil;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ChintaiRailwayController003_1 extends SuumoCommonController {

    private final SuumoRequestUtil ut;
    private final String VIEW = CHINTAI_ENSEN;

    private ModelAndView common(ModelAndView mv, String prefecture) {
        ut.setControllerAndView(this.getClass().getName(), mv, VIEW);
        List<RailwayDTO> railwayList = ut.getService().getTransportationInfoService()
                .getRailwayInfoByPrefecture(prefecture);

        Map<String, List<RailwayDTO>> railwayInfoList = new LinkedHashMap<>();
        for (RailwayDTO railway : railwayList) {
            List<RailwayDTO> subMetroList = railwayList.stream()
                    .filter(t -> t.getRailwayCompanyName().equals(railway.getRailwayCompanyName()))
                    .collect(Collectors.toList());
            railwayInfoList.put(railway.getRailwayCompanyName(), subMetroList);
        }
        ut.setPrefectureInfoInSession(prefecture);
        mv.addObject(RAILWAY_LIST, railwayInfoList);
        return mv;
    }

    @RequestMapping(value = "/chintai/*/ensen/", method = RequestMethod.GET)
    public ModelAndView init(ModelAndView mv) {
        String prefecture = ut.getRq().getServletPath().split("/")[2];
        return common(mv, prefecture);
    }

    @RequestMapping(value = "/jj/chintai/kensaku/FR301FB003/", method = RequestMethod.GET)
    public ModelAndView sub(ModelAndView mv) {
        String paramOfPrefectureNo = ut.getRq().getParameter("ra");
        AreaPrefectureDTO prefecture = ut.getService().getTransportationInfoService()
                .getAreaPrefectureInfoByPrefectureNo(paramOfPrefectureNo);
        return common(mv, prefecture.getPrefecture());
    }

}
