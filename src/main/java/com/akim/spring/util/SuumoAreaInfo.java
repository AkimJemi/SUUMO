package com.akim.spring.util;

import java.util.List;

import com.akim.spring.util.SuumoEnum.AreaInfo;

public class SuumoAreaInfo {

    @SuumoAreaAnnotation(areaInfo = "e", chintaiInfo = "d")
    public static final List<String> hokkaido = AreaInfo.allValues();

}
