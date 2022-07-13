package com.vacation.service.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.vacation.service.dao.TripDAO;
import com.vacation.service.entity.Trip;
import com.vacation.service.repository.TripRepo;

@Controller
public class TripController {

	@Autowired
	TripDAO dao;
	
	@Autowired
	TripRepo repo;
	
	@RequestMapping("/insert_trip")
	public ModelAndView insert_trip(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mv = new ModelAndView();
		Trip trip = new Trip();
		trip.setCity(req.getParameter("city"));
		trip.setFrom_date(req.getParameter("from_date"));
		trip.setTo_date(req.getParameter("to_date"));
		trip.setNumber_of_guests(req.getParameter("number_of_guests"));
		trip.setName(req.getParameter("name"));
		trip.setContact(req.getParameter("contact"));
		if(dao.insert_trip(trip)!=null) {
			mv.setViewName("trip_booked.jsp");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/retrieve_trip")
	public ModelAndView retrieve_trip(HttpServletRequest req, HttpServletResponse res){
		ModelAndView mv = new ModelAndView();
		int trip_id = Integer.parseInt(req.getParameter("trip_id"));
		List<Trip> list = repo.findById(trip_id);
		mv.setViewName("trip_retrieve.jsp");
		mv.addObject("list",list);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/retrieve_trip_all")
	public ModelAndView retrieve_trip_all(HttpServletRequest req, HttpServletResponse res){
		ModelAndView mv = new ModelAndView();
		List<Trip> list = repo.findByAll();
		mv.setViewName("trip_retrieve.jsp");
		mv.addObject("list",list);
		return mv;
	}
	
	@RequestMapping("/delete_trip")
	public ModelAndView delete_trip(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mv = new ModelAndView();
		Trip trip = new Trip();
		trip.setTrip_id(Integer.parseInt(req.getParameter("trip_id")));
		dao.delete_trip(trip);
		mv.setViewName("trip_delete.jsp");
		return mv;
	}
}
