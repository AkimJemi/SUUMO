package com.akim.spring.service;

import java.util.List;

import com.akim.spring.dto.MetroDTO;
import com.akim.spring.dto.PrefectureBasicInfoDTO;
import com.akim.spring.dto.RailwayDTO;

public interface TransportationInfoService {

    List<MetroDTO> getTransportationInfo(String prefectureInfo);


    List<PrefectureBasicInfoDTO> getPrefectureBasicInfoListByArea(String area);


    List<RailwayDTO> getRailwayInfoByPrefecture(String prefectureNo);

}
