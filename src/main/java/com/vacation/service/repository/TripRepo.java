package com.vacation.service.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.vacation.service.entity.Trip;

public interface TripRepo extends JpaRepository<Trip, Integer>{

	@Query("Select trip from Trip trip where trip.trip_id=?1")
	public List<Trip> findById(int trip_id);
	
	@Query("Select trip from Trip trip")
	public List<Trip> findByAll();
}
