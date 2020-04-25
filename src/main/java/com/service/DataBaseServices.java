package com.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.service.accountdetails.Cart;
import com.service.accountdetails.LoginAccount;
import com.service.repository.CartRepo;
import com.service.repository.LoginRepo;

@Component
public class DataBaseServices {

	@Autowired
	private LoginRepo repo;

	@Autowired
	private CartRepo cartrepo;

	public void insert(LoginAccount account) {
		repo.save(account);
	}

	public LoginAccount getData(String id) {
		return repo.getOne(id);
	}

	public void addTOCart(Cart cart) {
		cartrepo.save(cart);
	}

}
