package com.uca.capas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.UserAdmin;

@Controller
public class CoordinadorController {
	
	@RequestMapping("/opciones")
	public ModelAndView opciones(@RequestParam UserAdmin userAdmin) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("userAdmin", userAdmin);
		mav.setViewName("co-opciones");
		return mav;
	}
}
