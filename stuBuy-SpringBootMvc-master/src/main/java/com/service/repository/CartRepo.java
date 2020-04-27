package com.service.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.service.accountdetails.Cart;

@Repository
public interface CartRepo extends JpaRepository<Cart, Integer> {

	List<Cart> findByuserId(String id);

}
