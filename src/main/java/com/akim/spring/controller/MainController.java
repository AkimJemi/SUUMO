package com.akim.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.akim.spring.util.SuumoUrl;

@Controller
public class MainController {
    @GetMapping("")
    public String main() {
        return SuumoUrl.MAIN_PAGE;
    }
}
