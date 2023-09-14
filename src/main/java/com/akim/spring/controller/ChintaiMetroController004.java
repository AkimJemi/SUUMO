package com.akim.spring.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.dto.MetroDTO;
import com.akim.spring.dto.RailwayDTO;
import com.akim.spring.dto.SuumoHissuParameter;
import com.akim.spring.service.TransportationInfoService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ChintaiMetroController004 extends SuumoCommonController {

    @Autowired
    private TransportationInfoService transportationInfoService;

    @GetMapping("/jj/chintai/*/FR301FB004/ekiNext/")
    public ModelAndView main(ModelAndView mv, HttpServletRequest rq, SuumoHissuParameter hissu) {
        System.out.println("ChintaiMetroController004.main()");
        mv.addObject(HISSU, hissu);
        Map<RailwayDTO, List<MetroDTO>> metroInfoList = new LinkedHashMap<>();
        for (String rn : hissu.getRn()) {
            SuumoHissuParameter subHissu = new SuumoHissuParameter();
            subHissu.setAr(hissu.getAr());
            subHissu.setRa(hissu.getRa());
            subHissu.setSubRn(rn);
            List<MetroDTO> metroList = transportationInfoService.getMetroListByHissu(subHissu);
            MetroDTO metro = metroList.get(0);
            String railwayName = metro.getRailwayName();
            String railwayNo = metro.getRailwayNo();
            RailwayDTO railwayDTO = RailwayDTO.builder().railwayNo(railwayNo)
                    .railwayName(railwayName).build();
            metroInfoList.put(railwayDTO, metroList);
        }
////      修正必要
//        for (MetroDTO metro : metroList) {
//            List<MetroDTO> subMetroList = metroList.stream()
//                    .filter(t -> t.getRailwayNo().equals(metro.getRailwayNo()))
//                    .collect(Collectors.toList());
//        }
//        metroInfoList.put("no", subMetroList);
//        System.out.println(metroInfoList);
        mv.addObject(METRO_LIST, metroInfoList);
        mv.setViewName(CHINTAI_METRO_CHOICE);
        return mv;
    }

}
