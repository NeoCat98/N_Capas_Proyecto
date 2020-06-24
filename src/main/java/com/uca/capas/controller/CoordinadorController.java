package com.uca.capas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Alumno;
import com.uca.capas.domain.UserAdmin;

@Controller
public class CoordinadorController {
	
	@RequestMapping("/opciones")
	public ModelAndView opciones(@ModelAttribute UserAdmin userAdmin,@ModelAttribute Alumno alumno) {
		ModelAndView mav = new ModelAndView();
		System.out.println(userAdmin.getUserAdminID());
		System.out.println(alumno.getAlumnoID());
		mav.addObject("UserAdmin", userAdmin);
		mav.addObject("Alumno", alumno);
		mav.setViewName("co-opciones");
		return mav;
	}
}
