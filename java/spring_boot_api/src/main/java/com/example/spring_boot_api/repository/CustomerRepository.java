package com.example.spring_boot_api.repository;

import com.example.spring_boot_api.entity.CustomerEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<CustomerEntity, Long> {
}
