package com.vacation.service.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vacation.service.entity.Trip;
import com.vacation.service.repository.TripRepo;

@Service
public class TripDAO {

	@Autowired
	TripRepo repo;
	
	public Trip insert_trip(Trip trip) {
		return repo.save(trip);
	}
	
	public List<Trip> retrieve_trip(){
		return repo.findAll();
	}
	
	
	public void delete_trip(Trip trip) {
		repo.delete(trip);
	}
}
