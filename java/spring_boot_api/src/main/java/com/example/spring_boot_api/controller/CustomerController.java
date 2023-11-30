package com.example.spring_boot_api.controller;

import com.example.spring_boot_api.entity.CustomerEntity;
import com.example.spring_boot_api.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.persistence.GeneratedValue;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/v1/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @PostMapping("/save")
    public String saveCustomer(@RequestBody CustomerEntity customer) {
        try {
            customerService.saveCustomer(customer);
            return "create success";
        } catch (Exception ex) {
            return ex.getMessage();
        }
    }

    @GetMapping("/getAll")
    public List<CustomerEntity> getAll() {
        List<CustomerEntity> list = new ArrayList<>();
        try {
            list = customerService.getAllCustomer();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return list;
    }

    @GetMapping("/getDetail/{id}")
    public CustomerEntity getDetail(@PathVariable Long id) {
        return customerService.getCustomerById(id);
    }

    @GetMapping("/getDetail")
    public CustomerEntity getDetailCust(@RequestParam (required = true) Long id) {
        return customerService.getCustomerById(id);
    }

}
