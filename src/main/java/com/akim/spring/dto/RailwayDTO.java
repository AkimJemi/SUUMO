package com.akim.spring.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RailwayDTO {
    private String prefectureNo;
    private String railwayCompanyNo;
    private String railwayCompanyName;
    private String railwayNo;
    private String railwayName;

}