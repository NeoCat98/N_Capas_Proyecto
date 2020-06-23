package com.uca.capas.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.CentroEscolar;
import com.uca.capas.domain.Departamento;
import com.uca.capas.domain.Municipio;
import com.uca.capas.domain.Rol;
import com.uca.capas.domain.UserAdmin;
import com.uca.capas.service.CentroEscolarService;
import com.uca.capas.service.DepartamentoService;
import com.uca.capas.service.MunicipioService;
import com.uca.capas.service.RolService;
import com.uca.capas.service.UserAdminService;

@Controller
public class UserController {
	@Autowired
	UserAdminService userService;
	
	@Autowired
	CentroEscolarService centroService;
	
	@Autowired
	DepartamentoService departamentoService;
	
	@Autowired
	MunicipioService municipioService;
	
	@Autowired
	RolService rolService;
	
	
	@RequestMapping("/iniciarSesion")
	public ModelAndView inicioSesion() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("inicioSesion");
		return mav;
	}
	
	@RequestMapping("/formIniciarSesion")
	public ModelAndView formInicioSesion(@RequestParam String user,  @RequestParam String pass) {
		ModelAndView mav = new ModelAndView();
		
		UserAdmin userBD= new UserAdmin();
		userBD=userService.findByUsername(user);
		
		
		System.out.println(userBD.getPasswordEncripted());
		System.out.println(pass);
		if(userBD.getPasswordEncripted().equals(pass)) {
			mav.setViewName("index");
		}else {
			mav.setViewName("inicioSesion");
		}
		
		
		return mav;
	}
	
	
	@RequestMapping("/registrar")
	public ModelAndView registrar() {
		ModelAndView mav = new ModelAndView();
		
		UserAdmin user= new UserAdmin();
		List<Rol> roles = null;
		List<CentroEscolar> centros = null;
		List<Municipio> municipios = null;
		List<Departamento> departamentos = null;
		try {
			departamentos=departamentoService.findAll();
			centros=centroService.findAll();
			municipios=municipioService.findAll();
			roles=rolService.findAll();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		mav.addObject("user",user);
		mav.addObject("departamentos",departamentos);
		mav.addObject("centros",centros);
		mav.addObject("municipios",municipios);
		mav.addObject("roles",roles);
		mav.setViewName("Registro");
		return mav;
	}
	
	@RequestMapping("/formRegistro")
	public ModelAndView formRegistro(@Valid @ModelAttribute UserAdmin user, BindingResult result) {
		ModelAndView mav = new ModelAndView();
		
		try {
			if(user.getEstado()==null) {
				user.setEstado(false);
			}
			//Date date=new SimpleDateFormat("dd/MM/yyyy").parse(user.getBirthdayDate());  
		    //user.setBirthdayDate(date);
			userService.save(user);
		}catch(Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("index");
		return mav;
	}
	
	
	
}
