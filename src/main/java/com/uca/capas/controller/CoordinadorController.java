package com.uca.capas.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Alumno;
import com.uca.capas.domain.UserAdmin;
import com.uca.capas.service.AlumnoService;
import com.uca.capas.service.UserAdminService;

@Controller
public class CoordinadorController {

	@Autowired
	UserAdminService userAdminService;

	@Autowired
	AlumnoService alumnoService;

	@RequestMapping("/opciones")
	public ModelAndView opciones(@ModelAttribute UserAdmin userAdmin) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("UserAdmin", userAdmin);
		mav.setViewName("co-opciones");

		return mav;
	}

	@RequestMapping("/BuscarForm")
	public ModelAndView form(@ModelAttribute UserAdmin userAdmin) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("UserAdmin", userAdmin);
		mav.setViewName("buscar-alumno");
		return mav;
	}

	@RequestMapping("/BuscarAlumnos")
	public ModelAndView buscar(@ModelAttribute UserAdmin userAdmin,
			@RequestParam(value = "fullname") String fullname) {
		
		List<String> nombres = Arrays.asList(fullname.split(","));
		ModelAndView mav = new ModelAndView();

		UserAdmin user = userAdminService.findOne(userAdmin.getUserAdminID());

		List<Alumno> list = alumnoService.buscarFLname(fullname+"%","%");

		System.out.println(user.getCentroEscolar().getCentroEscolarID());
		/*
		 * List<Alumno> filtradoAlumnos = new ArrayList<Alumno>(); list.forEach(a -> {
		 * if(a.getCentroEscolar().getCentroEscolarID()==user.getCentroEscolar().
		 * getCentroEscolarID()) filtradoAlumnos.add(a); });
		 */

		list.forEach(Alumno -> {
			System.out.println(Alumno.getFirstName() + " " + Alumno.getLastName() + " "
					+ Alumno.getCentroEscolar().getCentroEscolarID());
		});

		mav.addObject("UserAdmin", userAdmin);
		mav.setViewName("list-alumno");
		return mav;
	}
}
