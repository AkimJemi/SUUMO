package com.akim.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.dto.SuumoHissuDTO;
import com.akim.spring.util.SuumoRequestUtil;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ChintaiIchiranController003_3 extends SuumoCommonController {

    private final SuumoRequestUtil ut;
    private String VIEW = CHINTAI_ICHIRAN;

    @RequestMapping("/jj/chintai/ichiran/FR301FC001/")
    public ModelAndView common(ModelAndView mv, SuumoHissuDTO hissu) {
        ut.setControllerAndView(this.getClass().getName(), mv, VIEW);
        return mv;
    }



}
