package com.example.spring_bean.entity;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Staff {
    private Long id;
    private String name;
    private String address;
    private Department department;

    public Staff(Long id, String name, String address) {
        this.id = id;
        this.name = name;
        this.address = address;
    }

    @Override
    public String toString() {
        return "Name: "+name + " - Address : "+address;
    }

}
