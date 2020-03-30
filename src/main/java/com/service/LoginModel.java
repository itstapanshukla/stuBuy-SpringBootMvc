package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.service.accountdetails.LoginAccount;

@Component
public class LoginModel {

	@Autowired
	private DataBaseServices services;

	public LoginAccount login(LoginAccount account) {
		LoginAccount login = services.getData(account.getUserphone());
		if (login == null) {
			return null;
		}
		if (login.getPassword().equals(account.getPassword()) == true) {
			return login;
		}
		return null;

	}

	public void createAccount(LoginAccount account) {

		services.insert(account);

	}
}
