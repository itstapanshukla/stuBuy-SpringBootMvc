package com.service.accountdetails;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_details")
public class UserDetails {

	@Id
	private String useremail;
	private String userphone;
	private String items;
	private String transactionId;

	@ManyToOne
	@JoinColumn(name = "login_account_userphone")
	private LoginAccount account;

	public LoginAccount getAccount() {
		return account;
	}

	public void setAccount(LoginAccount account) {
		this.account = account;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getItems() {
		return items;
	}

	public void setItems(String items) {
		this.items = items;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}

}
