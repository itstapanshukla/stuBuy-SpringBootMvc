package com.service.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.service.accountdetails.UserDetails;

@Repository
public interface UserRepo extends JpaRepository<UserDetails, String> {

}
