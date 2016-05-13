package com.v_1_0_0.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView welcomePage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is welcome page!");
		model.setViewName("v_1_0_0/test/hello");
		return model;
		
		//return new ModelAndView("saleOrderData/rtoinitiatedlist", "title", "Spring Security Custom Login Form");
	}
	
	@RequestMapping(value = { "angulerjs" }, method = RequestMethod.GET)
	public ModelAndView welcomeAngulerPage() {
		
		return new ModelAndView("v_1_0_0/test/anguler");
	}
}