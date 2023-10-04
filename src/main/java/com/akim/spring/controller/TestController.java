package com.akim.spring.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.tomcat.util.buf.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.akim.spring.util.SuumoRequestUtil;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class TestController {

    private final SuumoRequestUtil ut;

    @RequestMapping("test")
    @ResponseBody
    public ModelAndView test(ModelAndView mv) {
        mv.setViewName("NewFile");
        return mv;
    }

    @RequestMapping("cookies")
    @ResponseBody
    public String cookies(ModelAndView mv) {
        return ut.getAllCookieValuesAsString();
    }

    @RequestMapping("setCookies")
    public String setCookies(HttpServletRequest rq) {
        Map<String, String[]> params = rq.getParameterMap();
        for (Entry<String, String[]> element : params.entrySet()) {
            System.out.println(element.getValue().length);
            if (element.getValue().length > 1) {
                ut.setCookie(element.getKey(),
                        StringUtils.join(element.getValue()).replace(",", ":"));
            } else {
                ut.setCookie(element.getKey(), element.getValue()[0]);
            }
        }
        return "redirect:/cookies";
    }

    @RequestMapping("session")
    @ResponseBody
    public List<Map<String, String>> session(HttpServletRequest rq) {
        HttpSession session = rq.getSession();
        Enumeration e = session.getAttributeNames();
        List<Map<String, String>> list = new ArrayList<>();
        while (e.hasMoreElements()) {
            String key = (String) e.nextElement();
            list.add(new HashMap<>() {
                {
                    put(key, session.getAttribute(key).toString());
                }
            });
        }
        return list;
    }

}
