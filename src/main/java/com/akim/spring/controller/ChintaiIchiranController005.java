package com.akim.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ChintaiIchiranController005 extends SuumoCommonController {

    @RequestMapping("/jj/chintai/kensaku/FR301FC001/")
    public ModelAndView common(HttpServletRequest rq, ModelAndView mv) {
        System.out.println("ChintaiIchiranController005.common()");
        // これまで
        return mv;
    }

}
