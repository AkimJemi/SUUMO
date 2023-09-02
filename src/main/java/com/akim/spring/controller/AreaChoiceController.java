package com.akim.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.akim.spring.dao.TransportationInfoDAO;
import com.akim.spring.service.TransportationInfoService;

@Controller
public class AreaChoiceController extends SuumoCommonController {

    @Autowired
    TransportationInfoService service;

//    @Autowired
//    TestDao dao;

    @GetMapping("")
    public String main() {
        return AREA_CHOICE;
    }
}
