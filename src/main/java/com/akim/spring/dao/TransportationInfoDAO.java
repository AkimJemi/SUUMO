package com.akim.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.akim.spring.dto.MetroDTO;
import com.akim.spring.dto.PrefectureBasicInfoDTO;
import com.akim.spring.dto.RailwayDTO;
import com.akim.spring.dto.SuumoHissuParameter;

@Mapper
public interface TransportationInfoDAO {

    List<MetroDTO> getTransportationInfo(String prefectureNo);

    List<PrefectureBasicInfoDTO> getPrefectureBasicInfoListByArea(String area);

    List<RailwayDTO> getRailwayInfoByPrefecture(String prefectureNo);

    String getPrefectureNoByPrefecture(String prefecture);

    String getAreaNoByArea(String areaKey);

    PrefectureBasicInfoDTO getPrefectureBasicInfoByPrefecture(String prefecture);

    List<MetroDTO> getMetroListByHissu(@Param("hissu") SuumoHissuParameter hissu);

}
