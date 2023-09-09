package com.akim.spring.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PrefectureBasicInfoDTO {
    private String prefectureNo;
    private String prefecture;
    private String prefectureName;
}
