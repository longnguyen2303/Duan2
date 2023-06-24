package com.example.du_an_2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("sneaker")
public class TestController {

    @GetMapping("trang-chu")
    public String trangChu(){
        return "test";
    }
}
