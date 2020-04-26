package com.service.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.service.ProductDetails;
import com.service.accountdetails.UserDetails;

public interface ProductRepo extends JpaRepository<ProductDetails, Integer> {

}
