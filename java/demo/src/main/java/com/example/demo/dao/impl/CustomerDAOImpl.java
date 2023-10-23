package com.example.demo.dao.impl;

import com.example.demo.dao.CustomerDAO;
import com.example.demo.entity.CustomerEntity;
import com.example.demo.util.PersistenceUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAOImpl implements CustomerDAO {
    EntityManager en;
    EntityTransaction tran;

    public CustomerDAOImpl() {
        en = PersistenceUtil.createEntityManagerFactory().createEntityManager();
        tran = en.getTransaction();
    }

    @Override
    public void createCustomer(CustomerEntity customer) {
        try {
            tran.begin();
            en.persist(customer);
            tran.commit();
        } catch (Exception ex) {
            System.out.printf(ex.getMessage());
            tran.rollback();
        }
    }

    @Override
    public List<CustomerEntity> getAllCustomer() {
        List<CustomerEntity> customers = new ArrayList<>();
        try {
            Query query = en.createQuery("select c from CustomerEntity c");
            return query.getResultList();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return customers;
    }
    @Override
    public CustomerEntity findById(int id) {
        Query query = en.createQuery("SELECT s FROM CustomerEntity s WHERE s.id = :id");
        query.setParameter("id", id);
        try {
            return (CustomerEntity) query.getSingleResult();
        } catch (NoResultException ex) {
            System.out.println(ex.getMessage());
            return null;
        }
    }
}
