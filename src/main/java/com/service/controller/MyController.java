package com.service.controller;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.service.DataBaseServices;
import com.service.LoginModel;
import com.service.accountdetails.LoginAccount;
import com.service.mailservices.MailSenderUtility;

@Controller
@RequestMapping(value = "*/")
public class MyController {

	@Autowired
	private DataBaseServices service;

	@Autowired
	private LoginModel login;

	@Autowired
	private MailSenderUtility mailSender;

	@GetMapping("/home")
	public String homePage(Model andView) {
		return "homepage";
	}

	@PostMapping("/login")
	public String myPage(@RequestParam("useremail") String useremail, @RequestParam("password") String password,
			Model andView) {
		LoginAccount account = new LoginAccount();
		account.setUseremail(useremail);
		account.setPassword(password);
		if (login.login(account) != null) {
			account = login.login(account);
			andView.addAttribute("user", account);
			return "homepage";
		}
		return "home";
	}

	@PostMapping("/signup")
	public String signUp(@RequestParam("useremail") String useremail, @RequestParam("password") String password,
			@RequestParam("username") String username, @RequestParam("userphone") String userphone, Model model)
			throws MessagingException {
		LoginAccount account = new LoginAccount();
		account.setUseremail(useremail);
		account.setPassword(password);
		account.setUsername(username);
		account.setUserphone(userphone);
		login.createAccount(account);
		mailSender.sendEmail(account.getUsername(), account.getUseremail());
		return "homepage";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "homepage";

	}
}
