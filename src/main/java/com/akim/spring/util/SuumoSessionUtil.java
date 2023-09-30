package com.akim.spring.util;

import com.akim.spring.common.SuumoCommon;
import com.akim.spring.common.SuumoCommon.Variables;
import com.akim.spring.dto.PrefectureBasicInfoDTO;
import com.akim.spring.service.TransportationInfoService;

import jakarta.servlet.http.HttpSession;

public class SuumoSessionUtil extends SuumoCommon.Variables {

    public static void setPrefectureInfoInSession(
            TransportationInfoService transportationInfoService, String prefecture,
            HttpSession session) {
        PrefectureBasicInfoDTO prefectureBasicInfo = transportationInfoService
                .getPrefectureBasicInfoByPrefecture(prefecture);
        session.setAttribute(Variables.PREFECTURE_NO, prefectureBasicInfo.getPrefectureNo());
        session.setAttribute(Variables.PREFECTURE, prefecture);
        session.setAttribute(Variables.PREFECTURE_NAME, prefectureBasicInfo.getPrefectureName());
    }

    public static void setAreaInfoInSession(TransportationInfoService transportationInfoService,
            String areaKey, HttpSession session) {
        // TODO Auto-generated method stub

    }

}
