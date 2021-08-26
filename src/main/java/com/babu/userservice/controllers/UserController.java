package com.babu.userservice.controllers;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Value("${environment}")
    private String environment;
    
    @GetMapping("/health")
    public String getHealth(){
        return "Success";
    }
    @GetMapping("/environment")
    public String getEnvironment(){
        return environment;
    }    
}
