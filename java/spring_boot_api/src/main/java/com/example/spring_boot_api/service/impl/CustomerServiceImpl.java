package com.example.spring_boot_api.service.impl;

import com.example.spring_boot_api.entity.CustomerEntity;
import com.example.spring_boot_api.repository.CustomerRepository;
import com.example.spring_boot_api.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public void saveCustomer(CustomerEntity customer) {
        customerRepository.save(customer);
    }

    @Override
    public List<CustomerEntity> getAllCustomer() {
        return customerRepository.findAll();
    }

    @Override
    public CustomerEntity getCustomerById(Long id) {
        Optional<CustomerEntity> customer = customerRepository.findById(id);
        if (customer.isPresent()) {
            return customer.get();
        }
        return new CustomerEntity();
    }
}
