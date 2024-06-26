package com.akim.spring.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.dto.MetroDTO;
import com.akim.spring.dto.RailwayDTO;
import com.akim.spring.dto.SuumoHissuDTO;
import com.akim.spring.util.SuumoCommonService;
import com.akim.spring.util.SuumoRequestUtil;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ChintaiMetroController003_2 extends SuumoCommonController {

    private final SuumoRequestUtil ut;
    private final SuumoCommonService service;
    private final String VIEW = CHINTAI_METRO;

    public ModelAndView common(ModelAndView mv, SuumoHissuDTO hissu) {
        ut.setControllerAndView(this.getClass().getName(),mv,  VIEW);
        mv.addObject(HISSU, hissu);
        Map<RailwayDTO, List<MetroDTO>> metroInfoList = new LinkedHashMap<>();
        for (String rn : hissu.getRn()) {
            SuumoHissuDTO subHissu = new SuumoHissuDTO();
            subHissu.setAr(hissu.getAr());
            subHissu.setRa(hissu.getRa());
            subHissu.setSubRn(rn);
            List<MetroDTO> metroList = service.getTransportationInfoService().getMetroListByHissu(subHissu);
            if (metroList.size() != 0) {
                MetroDTO metro = metroList.get(0);
                String railwayName = metro.getRailwayName();
                String railwayNo = metro.getRailwayNo();
                RailwayDTO railwayDTO = RailwayDTO.builder().railwayNo(railwayNo)
                        .railwayName(railwayName).build();
                metroInfoList.put(railwayDTO, metroList);
            }
        }
        mv.addObject(METRO_LIST, metroInfoList);
        return mv;
    }

    @GetMapping("/jj/chintai/*/FR301FB003/ekiNext/")
    public ModelAndView ekiNext(ModelAndView mv, SuumoHissuDTO hissu) {
        return common(mv, hissu);
////      修正必要
//        for (MetroDTO metro : metroList) {
//            List<MetroDTO> subMetroList = metroList.stream()
//                    .filter(t -> t.getRailwayNo().equals(metro.getRailwayNo()))
//                    .collect(Collectors.toList());
//        }
//        metroInfoList.put("no", subMetroList);
//        System.out.println(metroInfoList);
    }

    @GetMapping("/jj/chintai/*/FR301FB004/")
    public ModelAndView FR301FB004(ModelAndView mv, SuumoHissuDTO hissu) {
        return common(mv, hissu);
    }
}
