package com.example.multidb.specification;

import com.example.multidb.customer.entity.Customer;
import org.springframework.data.jpa.domain.Specification;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

public class CustomerSpecification implements Specification<Customer> {
    @Override
    public Specification<Customer> and(Specification<Customer> other) {
        return Specification.super.and(other);
    }

    @Override
    public Specification<Customer> or(Specification<Customer> other) {
        return Specification.super.or(other);
    }

    @Override
    public Predicate toPredicate(Root<Customer> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
        return null;
    }
}
