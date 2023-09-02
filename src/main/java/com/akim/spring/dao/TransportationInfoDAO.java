package com.akim.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.akim.spring.dto.MetroDTO;

@Mapper
public interface TransportationInfoDAO {

    List<MetroDTO> getTransportationInfo(String prefectureInfoValue);

}
