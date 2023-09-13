package com.akim.spring.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class AreaPrefectureDTO {
    private String areaNo;
    private String area;
    private String areaName;
    private String prefectureNo;
    private String prefecture;
    private String prefectureName;

}
