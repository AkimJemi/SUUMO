package com.akim.spring.util;

import org.springframework.stereotype.Component;

import com.akim.spring.service.TransportationInfoService;

import lombok.Getter;

@Component
@Getter
public class SuumoCommonService {
    protected final TransportationInfoService transportationInfoService;

    public SuumoCommonService(TransportationInfoService transportationInfoService) {
        this.transportationInfoService = transportationInfoService;
    }
}
