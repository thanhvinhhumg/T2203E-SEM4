package com.example.spring_mvc.service;

import com.example.spring_mvc.entity.Customer;

import java.util.List;

public interface CustomerService {
    void saveCustomer(Customer customer);
    List<Customer> getAllCustomer();
}
