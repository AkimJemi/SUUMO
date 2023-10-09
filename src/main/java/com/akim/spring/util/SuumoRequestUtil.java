package com.akim.spring.util;

import java.util.Enumeration;

import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.dto.AreaPrefectureDTO;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.Getter;

@Component
@RequestScope
@Getter
public class SuumoRequestUtil extends SuumoCommonUtil {

    public SuumoRequestUtil(SuumoCommonService service, SuumoAreaUtil areaUtil, HttpSession session,
            HttpServletRequest rq, HttpServletResponse rs) {
        super(service, areaUtil, session, rq, rs);
    }

    public void setPrefectureInfoInSession(String prefecture) {
        AreaPrefectureDTO prefectureInfo = service.getTransportationInfoService()
                .getPrefectureInfoByPrefecture(prefecture);
        session.setAttribute(PREFECTURE_NO, prefectureInfo.getPrefectureNo());
        session.setAttribute(PREFECTURE, prefecture);
        session.setAttribute(PREFECTURE_NAME, prefectureInfo.getPrefectureName());
    }

    public void setAreaInfoInSession(String area) {
        AreaPrefectureDTO areaInfo = service.getTransportationInfoService().getAreaInfoByArea(area);
        session.setAttribute(AREA, areaInfo.getArea());
        session.setAttribute(AREA_NAME, areaInfo.getAreaName());
        session.setAttribute(AREA_NO, areaInfo.getAreaNo());
        session.setAttribute(BS, CHINTAI_VAL);
    }

    public String getAttribute(String area) {
        return session.getAttribute(area).toString();
    }

    public void setAttribute(String key, Object value) {
        session.setAttribute(key, value);
    }

    public void setControllerAndView(String classname, ModelAndView mv, String view) {
        String[] controller = classname.split("[.]");
        session.setAttribute(CONTROLLER,
                controller.length != 0 ? controller[controller.length - 1] : null);
        session.setAttribute(VIEW, view);
        mv.setViewName(view);
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
        Enumeration<String> attributeNames = session.getAttributeNames();
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