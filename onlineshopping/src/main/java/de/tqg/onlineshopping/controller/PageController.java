package de.tqg.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	/*
	 * Request Mapping Basics
	 * In Spring MVC applications, the RequestDispatche
	 */
	@RequestMapping(value = {"/", "/home", "/index"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greeting", "Welecome to Spring web MVC ");
		return mv;
	}
//	@RequestMapping (value="/test")
//	public ModelAndView test(@RequestParam(value ="greeting", required = false)String greeting){
//		if(greeting == null) {
//			greeting = "Hallo MAn";
//		}
//		ModelAndView mv = new ModelAndView("page");
//				mv.addObject("greeting", greeting);
//		return mv;
//	}
	
	
	@RequestMapping (value="/test/{greeting}")
	public ModelAndView test(@PathVariable("greeting")String greeting){
		if(greeting == null) {
			greeting = "Hallo MAn";
		}
		ModelAndView mv = new ModelAndView("page");
				mv.addObject("greeting", greeting);
		return mv;
	}
	
	
	
}
