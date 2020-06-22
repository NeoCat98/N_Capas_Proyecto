package com.uca.capas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.CentroEscolar;
import com.uca.capas.domain.Rol;
import com.uca.capas.domain.UserAdmin;
import com.uca.capas.service.CentroEscolarService;
import com.uca.capas.service.UserAdminService;

@Controller
public class UserController {
	@Autowired
	UserAdminService userService;
	
	@Autowired
	CentroEscolarService centroService;
	
	
	@RequestMapping("/registrar")
	public ModelAndView registrar() {
		ModelAndView mav = new ModelAndView();
		
		UserAdmin user= new UserAdmin();
		//List<Rol> roles = null;
		List<CentroEscolar> centros = null;
		//List<Rol> municipios = null;
		//List<Rol> departamentos = null;
		try {
			centros=centroService.findAll();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		mav.addObject("user",user);
		mav.addObject("centros",centros);
		mav.setViewName("Registro");
		return mav;
	}
	
	@RequestMapping("/formRegistro")
	public ModelAndView formRegistro() {
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
}
