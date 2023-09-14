package com.akim.spring.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RailwayDTO {
    private String prefectureNo;
    private String railwayCompanyNo;
    private String railwayCompanyName;
    private String railwayNo;
    private String railwayName;

}