package com.vacation.service.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.vacation.service.repository.AdminRepo;

@Controller
public class AdminController {

	@Autowired
	AdminRepo repo;
	
	@RequestMapping("/admin_login")
	public ModelAndView admin_login(HttpServletRequest req , HttpServletResponse res ) {
		
		ModelAndView mv = new ModelAndView();
		String username = req.getParameter("username");
		
		if(repo.findByName(username)!=null) {
			HttpSession session = req.getSession();
			session.setAttribute("username", username);
			mv.setViewName("admin_home.jsp"); 	
		}
		else {
			mv.setViewName("admin_wrong_password.jsp"); 		
		}
	return mv;
	}
	
}
