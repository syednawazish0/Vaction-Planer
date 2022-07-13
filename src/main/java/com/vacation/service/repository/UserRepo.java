package com.vacation.service.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.vacation.service.entity.User;

public interface UserRepo extends JpaRepository<User, String>{

	@Query("select user from User user where user.username=?1")
	public User findByName(String username);
	
	@Query("Select user from User user")
	public List<User> findByAll();
}
