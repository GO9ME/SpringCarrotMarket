package com.market.carrot;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
	main page 
	login 
	logout 
*/
@Controller
public class MainController {
	//main page
	@RequestMapping({"/main","/"})
	public ModelAndView mainPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
		
	}
}
