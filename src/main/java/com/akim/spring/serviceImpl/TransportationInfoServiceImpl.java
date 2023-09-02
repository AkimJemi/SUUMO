package com.akim.spring.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.akim.spring.dao.TransportationInfoDAO;
import com.akim.spring.dto.MetroDTO;
import com.akim.spring.service.TransportationInfoService;

@Service
public class TransportationInfoServiceImpl implements TransportationInfoService {
    @Autowired
    private TransportationInfoDAO transportationInfoDAO;

    public List<MetroDTO> getTransportationInfo(String prefectureInfoValue) {
        return transportationInfoDAO.getTransportationInfo(prefectureInfoValue);
    }
}
