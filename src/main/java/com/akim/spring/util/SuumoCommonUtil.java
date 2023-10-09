package com.akim.spring.util;

import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

import com.akim.spring.common.SuumoCommon;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.Getter;

@Component
@RequestScope
@Getter
public class SuumoCommonUtil extends SuumoCommon {
    protected SuumoCommonService service;
    protected SuumoAreaUtil areaUtil;
    protected HttpSession session;
    protected HttpServletRequest rq;
    protected HttpServletResponse rs;

    public SuumoCommonUtil(SuumoCommonService service, SuumoAreaUtil areaUtil, HttpSession session,
            HttpServletRequest rq, HttpServletResponse rs) {
        this.service = service;
        this.areaUtil = areaUtil;
        this.session = session;
        this.rq = rq;
        this.rs = rs;

    }
}
