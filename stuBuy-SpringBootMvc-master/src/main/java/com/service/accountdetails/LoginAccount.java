package com.service.accountdetails;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "login_account")
public class LoginAccount {

	@Id
	private String useremail;
	private String password;
	private String username;
	private String userphone;

	@OneToMany(mappedBy = "account")
	private List<UserDetails> user_details;

	public List<UserDetails> getUser_details() {
		return user_details;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public void setUser_details(List<UserDetails> user_details) {
		this.user_details = user_details;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

}
