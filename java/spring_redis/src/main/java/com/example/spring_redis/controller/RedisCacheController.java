package com.example.spring_redis.controller;

import com.example.spring_redis.entity.Customer;
import com.example.spring_redis.service.RedisCacheService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("redis/")
public class RedisCacheController {
    @Autowired
    private RedisCacheService redisCacheService;

    @GetMapping("cache")
    public String cacheRedis(@RequestParam String name) {
        redisCacheService.setValue("name", name);
        redisCacheService.setValueWithTTL("name1", name, 10L);
        return  (String)redisCacheService.getValue("name");
    }

    @PostMapping("cache/customer")
    public void cacheRedis(@RequestBody Customer customer) {
        try {
            redisCacheService.lPush("QUEUE:CUSTOMER", new ObjectMapper().writeValueAsString(customer));
        } catch (Exception ex){
            ex.printStackTrace();
        }
    }
}
