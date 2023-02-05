package ru.shaleev.leaning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class MainController {

    @GetMapping("/")
    public String general(Map<String, Object> model) {

        return "general";
    }
}

