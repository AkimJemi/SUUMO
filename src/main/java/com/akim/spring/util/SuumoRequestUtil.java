package com.akim.spring.util;

import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

import com.akim.spring.common.SuumoCommon;
import com.akim.spring.common.SuumoCommon.Variables;
import com.akim.spring.dto.AreaPrefectureDTO;
import com.akim.spring.service.TransportationInfoService;

import jakarta.servlet.http.Cookie;
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

    public String getAllCookieValuesAsString() {
        StringBuilder sb = new StringBuilder();

        Cookie[] cookies = rq.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                sb.append(cookie.getName()).append(": ").append(cookie.getValue()).append("\n");
            }
        }

        return sb.toString();
    }

    public String getAllSessionValuesAsString() {
        StringBuilder sb = new StringBuilder();

        java.util.Enumeration<String> attributeNames = session.getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            String attributeName = attributeNames.nextElement();
            sb.append(attributeName).append(": ").append(session.getAttribute(attributeName))
                    .append("\n");
        }

        return sb.toString();
    }


    // 세션 관련 함수
    public void setSession(String name, Object value) {
        session.setAttribute(name, value);
    }

    private Object getSession(String name, Object defaultValue) {
        Object value = session.getAttribute(name);

        if (value == null) {
            return defaultValue;
        }

        return value;
    }

    private long getSessionAsLong(String name, long defaultValue) {
        Object value = getSession(name, null);

        if (value == null)
            return defaultValue;

        return (long) value;
    }

    public void removeSession(String name) {
        session.removeAttribute(name);
    }

    // 쿠키 관련
    public void setCookie(String name, String value) {
        Cookie cookie = new Cookie(name, value);
        cookie.setPath("/");
        rs.addCookie(cookie);
    }

    private String getCookie(String name, String defaultValue) {
        Cookie[] cookies = rq.getCookies();

        if (cookies == null) {
            return defaultValue;
        }

        for (Cookie cookie : cookies) {
            if (cookie.getName().equals(name)) {
                return cookie.getValue();
            }
        }

        return defaultValue;
    }

    private long getCookieAsLong(String name, int defaultValue) {
        String value = getCookie(name, null);

        if (value == null) {
            return defaultValue;
        }

        return Long.parseLong(value);
    }

    public void removeCookie(String name) {
        Cookie cookie = new Cookie(name, "");
        cookie.setMaxAge(0);
        cookie.setPath("/");
        rs.addCookie(cookie);
    }
}