package com.akim.spring.util;

import java.util.ArrayList;
import java.util.List;

import com.akim.spring.util.SuumoEnum.ChintaiInfo;

public class practice {
    public static void main(String[] args) {
//        Pattern pattern = Pattern.compile("[/](.*?)[/]");
//
//        Matcher matcher = pattern.matcher("/HOKKAIDO/");
//        System.out.println(matcher.find());
//        String area = AreaInfo.value(matcher.group(1));
//        new practice001();
//        System.out.println(area);
        String ward = "1";
        List<String> list = new ArrayList<>();
        list.add(ward);
//        SuumoError.resultCheckOrError(new String());
        System.out.println(ChintaiInfo.allValues());
//        System.out.println(StringUtils.hasLength(ward));
//        System.out.println(ChintaiInfo.getPrefecturesByWard(AreaInfo.TOHOKU.getKey()));
    }

    public void test(String test) {

        System.out.println("practice.test()" + test);
    }
}
