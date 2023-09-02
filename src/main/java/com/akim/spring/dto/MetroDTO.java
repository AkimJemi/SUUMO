package com.akim.spring.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MetroDTO {
    private String no;
    private String area;
    private String prefecture;
    private String railwayCompany;
    private String railway;
    private String createdOn;
}
