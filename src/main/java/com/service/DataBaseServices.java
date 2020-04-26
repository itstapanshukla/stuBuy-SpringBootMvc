package com.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.service.accountdetails.Cart;
import com.service.accountdetails.LoginAccount;
import com.service.repository.CartRepo;
import com.service.repository.LoginRepo;
import com.service.repository.ProductRepo;

@Component
public class DataBaseServices {

	@Autowired
	private LoginRepo repo;

	@Autowired
	private CartRepo cartrepo;

	@Autowired
	private ProductRepo productRepo;

	public void insert(LoginAccount account) {
		repo.save(account);
	}

	public LoginAccount getData(String id) {
		return repo.getOne(id);
	}

	public void addTOCart(Cart cart) {
		cartrepo.save(cart);
	}

	public List<Cart> geAllItems(String id) {
		List<Cart> list = cartrepo.findByuserId(id);
		return list;

	}

	public List<ProductDetails> getAllproduct() {
		List<ProductDetails> list = productRepo.findAll();
		return list;
	}

}
