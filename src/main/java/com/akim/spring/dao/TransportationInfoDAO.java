package com.akim.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.akim.spring.dto.MetroDTO;
import com.akim.spring.dto.PrefectureBasicInfoDTO;
import com.akim.spring.dto.RailwayDTO;

@Mapper
public interface TransportationInfoDAO {

    List<MetroDTO> getTransportationInfo(String prefectureNo);

    List<PrefectureBasicInfoDTO> getPrefectureBasicInfoListByArea(String area);

    List<RailwayDTO> getRailwayInfoByPrefecture(String prefectureNo);

    String getPrefectureNoByPrefecture(String prefecture);

}
