package com.vacation.service.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Package {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long packageId;
	private String travelSrc;
	private int days;
	private double totalFare;

}
