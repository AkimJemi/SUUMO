package com.akim.spring.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.akim.spring.dao.TransportationInfoDAO;
import com.akim.spring.dto.AreaPrefectureDTO;
import com.akim.spring.dto.MetroDTO;
import com.akim.spring.dto.PrefectureBasicInfoDTO;
import com.akim.spring.dto.RailwayDTO;
import com.akim.spring.dto.SuumoHissuParameter;
import com.akim.spring.service.TransportationInfoService;

@Service
public class TransportationInfoServiceImpl implements TransportationInfoService {
    @Autowired
    private TransportationInfoDAO transportationInfoDAO;

    @Override
    public List<MetroDTO> getTransportationInfo(String prefectureInfoValue) {
        return transportationInfoDAO.getTransportationInfo(prefectureInfoValue);
    }

    @Override
    public List<PrefectureBasicInfoDTO> getPrefectureBasicInfoListByArea(String area) {
        return transportationInfoDAO.getPrefectureBasicInfoListByArea(area);
    }

    @Override
    public List<RailwayDTO> getRailwayInfoByPrefecture(String prefectureNo) {
        return transportationInfoDAO.getRailwayInfoByPrefecture(prefectureNo);
    }

    @Override
    public String getAreaNoByArea(String areaKey) {
        return transportationInfoDAO.getAreaNoByArea(areaKey);
    }

    @Override
    public PrefectureBasicInfoDTO getPrefectureBasicInfoByPrefecture(String prefecture) {
        return transportationInfoDAO.getPrefectureBasicInfoByPrefecture(prefecture);
    }

    @Override
    public List<MetroDTO> getMetroListByHissu(SuumoHissuParameter hissu) {
        return transportationInfoDAO.getMetroListByHissu(hissu);
    }

    @Override
    public AreaPrefectureDTO getAreaPrefectureInfoByPrefectureNo(String prefectureNo) {
        return transportationInfoDAO.getAreaPrefectureInfoByPrefectureNo(prefectureNo);
    }

}
