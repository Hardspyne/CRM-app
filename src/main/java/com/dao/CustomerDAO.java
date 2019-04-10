package com.dao;

import com.entity.Customer;

import java.util.List;

public interface CustomerDAO {

    List<Customer> getCustomers();

    void saveCostumer(Customer customer);

    Customer getCustomer(int id);

    void deleteCustomer(int id);
}
