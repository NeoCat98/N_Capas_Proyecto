package com.uca.capas.controller;

import java.util.ArrayList;
import java.util.List;

import com.uca.capas.config.Encriptar;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

	@RequestMapping("/SignOut")
	public ModelAndView singOut(HttpSession request) {
		ModelAndView mav =  new ModelAndView();
		/*
		UserAdmin user = new UserAdmin();
		user = (UserAdmin) request.getAttribute("usuario");
		*/
		request.invalidate();
		mav.setViewName("redirect:/IniciarSesion");
		return mav;
	}
	
	 @RequestMapping(value = "/IniciarSesion")
	 public ModelAndView showLogin(HttpSession request) {
	 	ModelAndView mav = new ModelAndView();
	 	if(request.getAttribute("usuario") == null) {
	 		mav.addObject("error","");
	 		mav.setViewName("inicioSesion");
	 	}
	 	else {
	 		mav.setViewName("redirect:/index");
	 	}
	 	return mav;
	 }

	@RequestMapping(value = "/formIniciarSesion", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpSession request,@RequestParam String user, @RequestParam String pass) {
		ModelAndView mav = new ModelAndView();
		UserAdmin userBD = new UserAdmin();
		Encriptar en = new Encriptar();
		userBD = userService.findByUsername(user);
	    if(request.getAttribute("usuario") == null) {
			if (null != userBD) {
				try {
					if (en.decrypt(userBD.getPasswordEncripted()).equals(pass)) {
					    request.setAttribute("usuario", userBD);
					    mav.setViewName("redirect:/index");
					}
				} catch (Exception e) {
			    	mav.addObject("error", "Ha ocurrido un error al intentar verificar la contraseña!!");
			    	mav.setViewName("redirect:/IniciarSesion");
					request.invalidate();
					e.printStackTrace();
				}
		    } else {
		    	mav.addObject("error", "Username or Password is wrong!!");
		        mav.setViewName("redirect:/IniciarSesion");
				request.invalidate();
		    }
	    }else {
	    	mav.addObject("error", "Username or Password is wrong!!");
	    	mav.setViewName("redirect:/IniciarSesion");
			request.invalidate();
	    }
	    return mav;
	}
	
	@RequestMapping("/index")
	public ModelAndView index(HttpSession request) {
		ModelAndView mav = new ModelAndView();
		UserAdmin user = new UserAdmin();
		user = (UserAdmin) request.getAttribute("usuario");
		if(user.getRol().getRolName().equals("Administrador")) {
			mav.setViewName("dashboard");
			return mav;
		}
		if(user.getRol().getRolName().equals("Coordinador")) {
			mav.addObject("UserAdmin",user);
			mav.setViewName("redirect:/coordinadorIndex");
			return mav;
		}else {
			mav.addObject("error","Error al intentar entrar, intente mas tarde");
			request.invalidate();
			mav.setViewName("redirect:/IniciarSesion");
			return mav;
		}
	}

	@RequestMapping("/registrar")
	public ModelAndView registrar() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("userAdmin", new UserAdmin());
		mav.addObject("departamentos", departamentoService.findAll());
		mav.addObject("centros", centroService.findAll());
		mav.addObject("municipios", municipioService.findAll());
		mav.addObject("roles", rolService.findAll());
		mav.setViewName("Registro");
		return mav;
	}

	@RequestMapping("/formRegistro")
	public ModelAndView formRegistro(@Valid @ModelAttribute UserAdmin user, BindingResult result) {
		ModelAndView mav = new ModelAndView();
		Encriptar en = new Encriptar();
		if(result.hasErrors()) {
			System.out.print(result);
			mav.addObject("departamentos", departamentoService.findAll());
			mav.addObject("centros", centroService.findAll());
			mav.addObject("municipios", municipioService.findAll());
			mav.addObject("roles", rolService.findAll());
			mav.addObject("userAdmin", user);
			mav.setViewName("Registro");
		}
		else {
			try {
				user.setEstado(false);
				user.setRol(rolService.findOne(2));
				user.setPasswordEncripted(en.encrypt(user.getPasswordEncripted()));
				userService.save(user);
			} catch (Exception e) {
				e.printStackTrace();
			}
			mav.setViewName("redirect:/index");
		}
		return mav;
	}
	
	@RequestMapping("/allMunicipios")
	public @ResponseBody List<String[]> municipio(@RequestParam Integer dep){
		List<Municipio> municipios = municipioService.findAll();
		List<String[]> result = new ArrayList<>();
		for(Municipio u: municipios) {
			if(u.getDepartamento().getDepartamentoID()==dep) {
				result.add(new String[] {u.getMunicipioID().toString(),u.getMunicipioName()});
			}
		}
		System.out.print(result);
		return result;
	}
	
}
