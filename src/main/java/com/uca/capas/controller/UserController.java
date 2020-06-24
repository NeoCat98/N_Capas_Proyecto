package com.uca.capas.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.uca.capas.config.Encriptar;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Alumno;
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
	public ModelAndView formInicioSesion(@RequestParam String user, @RequestParam String pass) {
		ModelAndView mav = new ModelAndView();
		Encriptar en = new Encriptar();
		UserAdmin userBD = new UserAdmin();
		Alumno alumno = new Alumno();
		alumno.setAlumnoID(2);
		userBD = userService.findByUsername(user);

		try {
			if (en.decrypt(userBD.getPasswordEncripted()).equals(pass)) {
				mav.addObject("UserAdmin", userBD);
				mav.addObject("Alumno", alumno);
				if (userBD.getRol().getRolID().equals(1)) {
					mav.setViewName("dashboard");
				} else {
					mav.setViewName("co-opciones");
				}
				// mav.setViewName("index");
			} else {
				mav.setViewName("inicioSesion");
			}
		} catch (Exception e) {

			e.printStackTrace();
		}

		return mav;
	}

	@RequestMapping("/registrar")
	public ModelAndView registrar() {
		ModelAndView mav = new ModelAndView();

		UserAdmin user = new UserAdmin();
		List<Rol> roles = null;
		List<CentroEscolar> centros = null;
		List<Municipio> municipios = null;
		List<Departamento> departamentos = null;
		try {
			departamentos = departamentoService.findAll();
			centros = centroService.findAll();
			municipios = municipioService.findAll();
			roles = rolService.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		}

		mav.addObject("user", user);
		mav.addObject("departamentos", departamentos);
		mav.addObject("centros", centros);
		mav.addObject("municipios", municipios);
		mav.addObject("roles", roles);
		mav.setViewName("Registro");
		return mav;
	}

	@RequestMapping("/formRegistro")
	public ModelAndView formRegistro(@Valid @ModelAttribute UserAdmin user, BindingResult result) {
		ModelAndView mav = new ModelAndView();
		Encriptar en = new Encriptar();
		try {
			if (user.getEstado() == null) {
				user.setEstado(false);
			}

			user.setPasswordEncripted(en.encrypt(user.getPasswordEncripted()));
			userService.save(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("index");
		return mav;
	}

}
