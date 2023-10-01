package com.akim.spring.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class SuumoHissuDTO {

    private String ar;
    private String ra;
    private String bs;
    private String pageId;
    private List<String> rn;
    private String subRn;
    private List<String> ek;
    private String subEk;
}
