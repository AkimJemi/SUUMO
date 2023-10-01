package com.akim.spring.common;

public class SuumoCommon {

    public static class Variables {
        // Model Variables
        public static final String RAILWAY_LIST = "railwayList";
        public static final String DESC_TITLE = "descTitle";

        // Session Info
        public final String CONTROLLER = "controller";
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

        // bs ビジネス
        public static final String BS = "bs";
        public static final String SHINCHIKU_VAL = "010";
        public static final String CHUKO_VAL = "011";
        public static final String IKKODATE_VAL = "020";
        public static final String CHUKOIKKODATE_VAL = "021";
        public static final String CHINTAI_VAL = "040";

    }

    public static class Path {
        // Path
        public static final String AREA_CHOICE = "/area/areaChoice";
        public static final String AREA_OPTION = "/area/areaOption";
        public static final String CHINTAI_PREFECTURE = "/chintai/chintaiPrefecture";
        public static final String CHINTAI_ENSEN = "/chintai/chintaiEnsen";
        public static final String CHINTAI_METRO = "/chintai/chintaiMetro";
        public static final String CHINTAI_CITY = "/chintai/chintaiCity";
        public static final String CHINTAI_ICHIRAN = "/chintai/chintaiIchiran";
    }

}
