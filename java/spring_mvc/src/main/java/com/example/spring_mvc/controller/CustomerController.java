package com.example.spring_mvc.controller;

import com.example.spring_mvc.entity.Customer;
import com.example.spring_mvc.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/getFormCreate")
    public String getFormCreate(ModelMap modelMap) {
        String view = "createOrUpdateCustomerForm";
        try {
            Customer customer = new Customer();
            modelMap.addAttribute("customer", customer);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return view;
    }

    @PostMapping("/createOrUpdate")
    public String saveOrUpdate(@ModelAttribute("customer") Customer customer, ModelMap modelMap) {
        String view = "redirect:/customer/getAll";
        try {
            customerService.saveCustomer(customer);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return  view;
    }

    @GetMapping("/getAll")
    public String getAll(ModelMap modelMap){
        String view = "listCustomer";
        try {
            List<Customer> customers = customerService.getAllCustomer();
            modelMap.addAttribute("customers", customers);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return view;
    }
}
