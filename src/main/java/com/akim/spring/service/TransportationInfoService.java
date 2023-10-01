package com.akim.spring.service;

import java.util.List;

import com.akim.spring.dto.AreaPrefectureDTO;
import com.akim.spring.dto.MetroDTO;
import com.akim.spring.dto.RailwayDTO;
import com.akim.spring.dto.SuumoHissuDTO;

public interface TransportationInfoService {

    List<MetroDTO> getTransportationInfo(String prefectureInfo);

    List<AreaPrefectureDTO> getPrefectureBasicInfoListByArea(String area);

    List<RailwayDTO> getRailwayInfoByPrefecture(String prefectureNo);

    AreaPrefectureDTO getAreaInfoByArea(String area);

    AreaPrefectureDTO getPrefectureInfoByPrefecture(String prefecture);

    List<MetroDTO> getMetroListByHissu(SuumoHissuDTO hissu);

    AreaPrefectureDTO getAreaPrefectureInfoByPrefectureNo(String prefectureNo);

}
