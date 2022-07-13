package com.vacation.service.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.vacation.service.dao.UserDAO;
import com.vacation.service.entity.User;
import com.vacation.service.repository.UserRepo;

@Controller
public class UserController {

	@Autowired
	UserDAO dao;
	
	@Autowired
	UserRepo repo;
	
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mv = new ModelAndView();
		String username=req.getParameter("username");
		if(repo.findByName(username)!=null) {
			HttpSession session = req.getSession();
			session.setAttribute("username", username);
			mv.setViewName("home.jsp"); 
		}
		else {
			mv.setViewName("user_wrong_password.jsp");
		}
		return mv;
	}
	
	@RequestMapping("/user_logout")
	public ModelAndView user_logout(HttpServletRequest req , HttpServletResponse res ) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = req.getSession();
		session.invalidate();
		mv.setViewName("user_logout.jsp");
		return mv;
	}
	
	@RequestMapping("/insert")
	public ModelAndView insert(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mv = new ModelAndView();
		User user=new User();
		user.setUsername(req.getParameter("username"));
		user.setPassword(req.getParameter("password"));
		user.setEmail(req.getParameter("email"));
		User userInsert = dao.insert(user);
		if(userInsert!=null) {
			mv.setViewName("user_login.jsp");
		}
		return mv;
	}
	
	@RequestMapping("/retrieve_user")
	public ModelAndView retrieve_user(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mv = new ModelAndView();
		List<User> list = repo.findByAll();
		mv.setViewName("user_retrieve.jsp");
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping("/delete_user")
	public ModelAndView delete_user(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mv = new ModelAndView();
		User user = new User();
		user.setUsername(req.getParameter("username"));
		repo.delete(user);
		mv.setViewName("user_delete.jsp");
		return mv;
	}
}
