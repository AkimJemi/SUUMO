package com.akim.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AreaChoiceController extends SuumoCommonController{
    @GetMapping("")
    public String main() {
        return AREA_CHOICE;
    }
}
