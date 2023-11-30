package com.example.spring_boot_api.service;

import com.example.spring_boot_api.entity.CustomerEntity;

import java.util.List;

public interface CustomerService {
    void saveCustomer(CustomerEntity customer);
    List<CustomerEntity> getAllCustomer();
    CustomerEntity getCustomerById(Long id);
}
