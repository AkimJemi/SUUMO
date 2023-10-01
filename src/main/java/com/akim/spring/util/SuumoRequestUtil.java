package com.akim.spring.util;

import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

import com.akim.spring.common.SuumoCommon;
import com.akim.spring.common.SuumoCommon.Variables;
import com.akim.spring.controller.ChintaiAreaController001;
import com.akim.spring.dto.AreaPrefectureDTO;
import com.akim.spring.service.TransportationInfoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.Getter;

@Component
@RequestScope
@Getter
public class SuumoRequestUtil extends SuumoCommon.Variables {

    private final TransportationInfoService transportationInfoService;

    private final HttpSession session;
    private final HttpServletRequest rq;
    private final HttpServletResponse rs;

    public SuumoRequestUtil(HttpSession session, HttpServletRequest rq, HttpServletResponse rs,
            TransportationInfoService transportationInfoService) {
        this.transportationInfoService = transportationInfoService;
        this.session = session;
        this.rq = rq;
        this.rs = rs;
    }

    public void setPrefectureInfoInSession(String prefecture) {
        AreaPrefectureDTO prefectureInfo = transportationInfoService
                .getPrefectureInfoByPrefecture(prefecture);
        session.setAttribute(Variables.PREFECTURE_NO, prefectureInfo.getPrefectureNo());
        session.setAttribute(Variables.PREFECTURE, prefecture);
        session.setAttribute(Variables.PREFECTURE_NAME, prefectureInfo.getPrefectureName());
    }

    public void setAreaInfoInSession(String area) {
        AreaPrefectureDTO areaInfo = transportationInfoService.getAreaInfoByArea(area);
        session.setAttribute(Variables.AREA, areaInfo.getArea());
        session.setAttribute(Variables.AREA_NAME, areaInfo.getAreaName());
        session.setAttribute(Variables.AREA_NO, areaInfo.getAreaNo());
        session.setAttribute(BS, CHINTAI_VAL);
    }

    public String getAttribute(String area) {
        return session.getAttribute(area).toString();
    }

    public void setAttribute(String key, Object value) {
        session.setAttribute(key, value);
    }

    public void setController(String classname) {
        System.out.println(classname);
        String[] controller = classname.split("[.]");
        session.setAttribute(CONTROLLER,
                controller.length != 0 ? controller[controller.length - 1] : null);
    }
}