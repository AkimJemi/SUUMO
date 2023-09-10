package com.akim.spring.service;

import java.util.List;

import com.akim.spring.dto.MetroDTO;
import com.akim.spring.dto.PrefectureBasicInfoDTO;
import com.akim.spring.dto.RailwayDTO;
import com.akim.spring.dto.SuumoHissuParameter;

public interface TransportationInfoService {

    List<MetroDTO> getTransportationInfo(String prefectureInfo);


    List<PrefectureBasicInfoDTO> getPrefectureBasicInfoListByArea(String area);


    List<RailwayDTO> getRailwayInfoByPrefecture(String prefectureNo);


    String getAreaNoByArea(String areaKey);


    PrefectureBasicInfoDTO getPrefectureBasicInfoByPrefecture(String prefecture);


    List<MetroDTO> getMetroListByHissu(SuumoHissuParameter hissu);

}
