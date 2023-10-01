package com.akim.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.dto.SuumoHissuDTO;
import com.akim.spring.util.SuumoRequestUtil;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ChintaiIchiranController005 extends SuumoCommonController {

    private final SuumoRequestUtil ut;

    @RequestMapping("/jj/chintai/kensaku/FR301FC001/")
    public ModelAndView common(ModelAndView mv, SuumoHissuDTO hissu) {
        mv.setViewName(Path.CHINTAI_ICHIRAN);
        ut.setController(this.getClass().getName());




        return mv;
    }

}
