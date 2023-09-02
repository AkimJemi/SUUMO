package com.akim.spring.service;

import java.util.List;

import com.akim.spring.dto.MetroDTO;

public interface TransportationInfoService {

    List<MetroDTO> getTransportationInfo(String prefectureInfo);

}
