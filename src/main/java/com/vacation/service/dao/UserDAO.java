package com.vacation.service.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vacation.service.entity.User;
import com.vacation.service.repository.UserRepo;

@Service
public class UserDAO {

	@Autowired
	UserRepo repo;
	
	public User insert(User user) {
		return repo.save(user);
	}
	
	public List<User> retrieve(){
		return repo.findAll();
	}
	
	public void delete(User user) {
		repo.delete(user);
	}
}
