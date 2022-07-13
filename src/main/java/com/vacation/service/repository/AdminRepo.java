package com.vacation.service.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.vacation.service.entity.Admin;

public interface AdminRepo extends JpaRepository<Admin, String>{

	@Query("select admin from Admin admin where admin.username=?1")
	public Admin findByName(String username);

}
