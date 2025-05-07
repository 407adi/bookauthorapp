package com.example.bookauthorapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String homePage() {
        return "home"; // Will render /WEB-INF/views/home.jsp
    }
}
