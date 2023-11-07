package com.example.spring_mvc.repository;

import com.example.spring_mvc.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
