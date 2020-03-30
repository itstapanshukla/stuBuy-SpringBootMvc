package com.service.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.service.DataBaseServices;
import com.service.LoginModel;
import com.service.accountdetails.LoginAccount;

@Controller
@RequestMapping(value = "/account")
public class MyController {

	@Autowired
	private DataBaseServices service;

	@Autowired
	private LoginModel login;

	@GetMapping("/home")
	public String homePage(Model andView) {
		return "homepage";
	}

	@PostMapping("/login")
	public String myPage(@RequestParam("userphone") String userphone, @RequestParam("password") String password,
			Model andView) {
		LoginAccount account = new LoginAccount();
		account.setUserphone(userphone);
		account.setPassword(password);
		if (login.login(account) != null) {
			account = login.login(account);
			andView.addAttribute("user", account);
			return "homepage";
		}
		return "home";

	}

	@PostMapping("/signup")
	public String signUp(@RequestParam("userphone") String userphone, @RequestParam("password") String password,
			@RequestParam("username") String username, Model model) {
		System.out.println(userphone + " " + password);
		LoginAccount account = new LoginAccount();
		account.setUserphone(userphone);
		account.setPassword(password);
		account.setUsername(username);
		login.createAccount(account);
		return "homepage";
	}

}
