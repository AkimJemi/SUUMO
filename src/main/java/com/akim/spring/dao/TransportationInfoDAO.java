package com.akim.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.akim.spring.dto.AreaPrefectureDTO;
import com.akim.spring.dto.MetroDTO;
import com.akim.spring.dto.RailwayDTO;
import com.akim.spring.dto.SuumoHissuDTO;

@Mapper
public interface TransportationInfoDAO {

    List<MetroDTO> getTransportationInfo(String prefectureNo);

    List<AreaPrefectureDTO> getPrefectureBasicInfoListByArea(String area);

    List<RailwayDTO> getRailwayInfoByPrefecture(String prefectureNo);

    String getPrefectureNoByPrefecture(String prefecture);

    AreaPrefectureDTO getAreaInfoByArea(String area);

    AreaPrefectureDTO getPrefectureInfoByPrefecture(String prefecture);

    List<MetroDTO> getMetroListByHissu(@Param("hissu") SuumoHissuDTO hissu);

    AreaPrefectureDTO getAreaPrefectureInfoByPrefectureNo(String prefectureNo);

}
