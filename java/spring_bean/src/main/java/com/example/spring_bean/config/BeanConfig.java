package com.example.spring_bean.config;

import com.example.spring_bean.entity.Staff;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class BeanConfig {

    @Bean("staff04")
    public Staff createStaff04() {
        return new Staff(4L, "staff 04", "Ha Noi 04");
    }
}
