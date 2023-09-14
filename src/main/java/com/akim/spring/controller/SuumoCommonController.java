package com.akim.spring.controller;

import org.springframework.stereotype.Controller;

@Controller
public class SuumoCommonController {

    // Model Variables
    public static final String RESULT = "result";

//    public static final String CHINTAI_VALUE = "chintaiValue";
//    public static final String CHINTAI_KEY = "chintaiKey";
//    public static final String PREFECTURE_KEY = "prefectureKey";
//    public static final String PREFECTURE_VALUE = "prefectureValue";
//    public static final String TRANSPORTATION_INFO = "transportationInfo";
    public static final String RAILWAY_LIST = "railwayList";
//    public static final String TAB_ITEM = "tabItem";

    // Session Info
    public static final String AREA_NAME = "areaName";
    public static final String AREA = "area";
    public static final String AREA_NO = "areaNo";
    public static final String PREFECTURE_NO = "prefectureNo";
    public static final String PREFECTURE = "prefecture";
    public static final String PREFECTURE_NAME = "prefectureName";
    public static final String PREFECTURE_LIST = "prefectureList";
    public static final String PREFECTURE_INFO = "prefectureInfo";
    public static final String HISSU = "hissu";
    public static final String METRO_LIST = "metroList";

    public static final String BS = "bs";
    public static final String CHINTAI_VAL = "040";
    public static final String SHINCHIKU_VAL = "010";
    public static final String CHUKO_VAL = "011";
    public static final String IKKODATE_VAL = "020";
    public static final String CHUKOIKKODATE_VAL = "021";

    // Path
    public static final String AREA_CHOICE = "/area/areaChoice";
    public static final String AREA_OPTION = "/area/areaOption";

    public static final String CHINTAI_PREFECTURE_CHOICE = "/chintai/chintaiPrefectureChoice";
    public static final String CHINTAI_ENSEN_CHOICE = "/chintai/chintaiEnsenChoice";
    public static final String CHINTAI_METRO_CHOICE = "/chintai/chintaiMetroChoice";

    public static final String CHINTAI_CITY_CHOICE = "/chintai/chintaiCityChoice";
//    public static final String CHINTAI_OPTION = "/option/chintaiOption";

}
