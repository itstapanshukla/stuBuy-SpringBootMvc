package com.service.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.service.accountdetails.LoginAccount;

@Repository
public interface LoginRepo extends JpaRepository<LoginAccount, String> {

}
