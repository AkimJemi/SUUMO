package com.akim.spring.interceptor;

import org.springframework.util.StringUtils;

import com.akim.spring.util.SuumoEnum.PrefectureInfo;

public class practice {

    public static void main(String[] args) {

        System.out.println(PrefectureInfo.value("tohoku"));
//        Map<String,String>map = PrefectureInfo.getPrefectureByPrefectureMap(PrefectureInfo.value("tohoku"), "ishikawa");

//        for (Entry<String, String> entry : map.entrySet()) {
//            System.out.println(entry.getKey() + entry.getValue());
//
//
//        }
        System.out.println(StringUtils.pathEquals("error", "1error"));

    }

}
