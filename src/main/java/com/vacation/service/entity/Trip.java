package com.vacation.service.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Trip {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long trip_id;
	private String city;
	private String from_date;
	private String to_date;
	private String number_of_guests;
	private String name;
	private String contact;
}
