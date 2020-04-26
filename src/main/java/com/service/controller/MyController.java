package com.service.controller;

import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.service.DataBaseServices;
import com.service.LoginModel;
import com.service.accountdetails.Cart;
import com.service.accountdetails.LoginAccount;
import com.service.mailservices.MailSenderUtility;

@Controller
@RequestMapping(value = "/account")
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
			Model andView, HttpSession session) {
		LoginAccount account = new LoginAccount();
		account.setUseremail(useremail);
		account.setPassword(password);
		if (login.login(account) != null) {
			account = login.login(account);
			andView.addAttribute("user", account);
			session.setAttribute("user", account);
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

	@GetMapping("/forget")
	public String forgetPassword() {
		return "forgetpassword";

	}

	@GetMapping("/userpage")
	public String userHomePage() {
		return "userpage";

	}

	@GetMapping("/addcart/{id}")
	public void addTOCart(@PathVariable("id") String id, HttpSession session) {
		Cart cart = new Cart();
		LoginAccount login;
		login = (LoginAccount) session.getAttribute("user");
		cart.setProductId(id);
		cart.setAccount(login);
		cart.setUserId(login.getUseremail());
		service.addTOCart(cart);

	}

	@GetMapping("/orders/{id}")
	public String userOrders(@PathVariable("id") String id, Model model) {
		List<Cart> listOfCarts = service.geAllItems(id);
		model.addAttribute("listOfCarts", listOfCarts);
		return "userorders";
	}

}