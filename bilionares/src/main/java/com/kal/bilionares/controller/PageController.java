package com.kal.bilionares.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kal.bilionaresbackend.dao.VoteCategoryDAO;

@Controller
public class PageController {
	@Autowired
	private VoteCategoryDAO voteCategoryDAO; 

	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView index(){
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("votes" ,voteCategoryDAO.list());
		
		mv.addObject("userClickHome", true);
		return mv;
		
			
		
	}
	@RequestMapping(value="/guidelines")
	public ModelAndView guidline(){
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Guidelines");
		mv.addObject("userClickGuidelines", true);
		return mv;
		
			
		
	}
	@RequestMapping(value="/profile")
	public ModelAndView profile(){
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Profile");
		mv.addObject("userClickProfile", true);
		return mv;
		
			
		
	}
}
