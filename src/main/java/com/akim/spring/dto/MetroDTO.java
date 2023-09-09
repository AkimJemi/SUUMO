package com.akim.spring.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MetroDTO {
    private String areaNo;
    private String area;
    private String areaName;
    private String prefectureNo;
    private String prefecture;
    private String prefectureName;
    private String railwayCompanyNo;
    private String railwayCompanyName;
    private String railwayNo;
    private String railwayName;
    private String metroNo;
    private String metroName;

}
