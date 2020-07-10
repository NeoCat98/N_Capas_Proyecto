package com.uca.capas.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.config.Encriptar;
import com.uca.capas.domain.CentroEscolar;
import com.uca.capas.domain.Departamento;
import com.uca.capas.domain.Materia;
import com.uca.capas.domain.Municipio;
import com.uca.capas.domain.Rol;
import com.uca.capas.domain.UserAdmin;
import com.uca.capas.dto.TablaDTO;
import com.uca.capas.service.CentroEscolarService;
import com.uca.capas.service.DepartamentoService;
import com.uca.capas.service.MateriaService;
import com.uca.capas.service.MunicipioService;
import com.uca.capas.service.RolService;
import com.uca.capas.service.UserAdminService;



@Controller
public class AdminController {
	
	@Autowired
	UserAdminService userService;
	
	@Autowired
	MateriaService materiaService;
	
	@Autowired
	CentroEscolarService centroService;
	
	@Autowired
	DepartamentoService departamentoService;

	@Autowired
	MunicipioService municipioService;

	@Autowired
	RolService rolService;
	
	@RequestMapping("/adminIndex")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("dashboard");
		return mav;
	}
	
	@RequestMapping("/usuarios")
	public ModelAndView usuario() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usuarios");
		return mav;
	}
	
	@RequestMapping("/cargarUsuario")
	public @ResponseBody TablaDTO cargarUsuario(){
		List<UserAdmin> usuarios = null;
		usuarios=userService.findAll();
		List<String[]> lista = new ArrayList<>();
		for(UserAdmin user : usuarios) {
			lista.add(new String[] {user.getUserAdminID().toString(),user.getUserAdminID().toString(),user.getUsername(),user.getEstado().toString()});
		}
		
		TablaDTO dto = new TablaDTO();
        dto.setData(lista);

		return dto;
	}
	
	@RequestMapping("/editarUsuario")
	public ModelAndView editarUsuario(@RequestParam Integer id) {
		ModelAndView mav = new ModelAndView();
		UserAdmin user = new UserAdmin();
		Encriptar en = new Encriptar();
		user=userService.findOne(id);
		try {
			user.setPasswordEncripted(en.decrypt(user.getPasswordEncripted()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.addObject("userAdmin",user);
		mav.addObject("departamentos", departamentoService.findAll());
		mav.addObject("centros", centroService.findAll());
		mav.addObject("municipios", municipioService.findAll());
		mav.addObject("roles", rolService.findAll());
		mav.setViewName("editarUsuario");
		return mav;
	}
	
	
	
	@RequestMapping("/nuevoUsuario")
	public ModelAndView nuevoUsuario() {
		ModelAndView mav = new ModelAndView();
		UserAdmin user = new UserAdmin();
		mav.addObject("userAdmin",user);
		mav.addObject("departamentos", departamentoService.findAll());
		mav.addObject("centros", centroService.findAll());
		mav.addObject("municipios", municipioService.findAll());
		mav.addObject("roles", rolService.findAll());
		mav.setViewName("usuario");
		return mav;
	}
	
	@RequestMapping("/formUsuario")
	public ModelAndView formEditarUsuario(@Valid @ModelAttribute UserAdmin user, BindingResult result) {
		ModelAndView mav = new ModelAndView();
		Encriptar en = new Encriptar();
		if(result.hasErrors()) {
			mav.addObject("userAdmin",user);
			mav.addObject("departamentos", departamentoService.findAll());
			mav.addObject("centros", centroService.findAll());
			mav.addObject("municipios", municipioService.findAll());
			mav.addObject("roles", rolService.findAll());
			mav.setViewName("editarUsuario");
		}
		else {
			try {
				if (user.getEstado() == null) {
					user.setEstado(false);
				}
				System.out.println(user.getUserAdminID());
				user.setPasswordEncripted(en.encrypt(user.getPasswordEncripted()));
				userService.save(user);
			} catch (Exception e) {
				e.printStackTrace();
			}
			mav.setViewName("redirect:/usuarios");
		}
		return mav;
	}
	
	@RequestMapping("/formNuevoUsuario")
	public ModelAndView formNuevoUsuario(@Valid @ModelAttribute UserAdmin user, BindingResult result) {
		ModelAndView mav = new ModelAndView();
		Encriptar en = new Encriptar();
		if(result.hasErrors()) {
			mav.addObject("userAdmin",user);
			mav.addObject("departamentos", departamentoService.findAll());
			mav.addObject("centros", centroService.findAll());
			mav.addObject("municipios", municipioService.findAll());
			mav.addObject("roles", rolService.findAll());
			mav.setViewName("usuario");
		}
		else {
			try {
				if (user.getEstado() == null) {
					user.setEstado(false);
				}
				System.out.println(user.getUserAdminID());
				user.setPasswordEncripted(en.encrypt(user.getPasswordEncripted()));
				userService.save(user);
			} catch (Exception e) {
				e.printStackTrace();
			}
			mav.setViewName("redirect:/usuarios");
		}
		return mav;
	}
	
	@RequestMapping("/materias")
	public ModelAndView materias() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("materias");
		return mav;
	}
	
	@RequestMapping("/cargarMateria")
	public @ResponseBody TablaDTO cargarMateria(){
		List<Materia> materias = null;
		materias= materiaService.findAll();
		List<String[]> lista = new ArrayList<>();
		for(Materia mate : materias) {
			lista.add(new String[] {mate.getMateriaID().toString(), mate.getMateriaID().toString(),mate.getMateriaName().toString()});
		}
		TablaDTO dto = new TablaDTO();
        dto.setData(lista);

		return dto;
	}
	
	@RequestMapping("/editarMateria")
	public ModelAndView editarMateria(@RequestParam Integer id) {
		ModelAndView mav = new ModelAndView();
		Materia materia= new Materia();
		materia = materiaService.findOne(id);
		mav.addObject("materia",materia);
		mav.setViewName("editarMateria");
		return mav;
	}
	
	@RequestMapping("/nuevaMateria")
	public ModelAndView nuevaMateria() {
		ModelAndView mav = new ModelAndView();
		Materia materia= new Materia();
		mav.addObject("materia",materia);
		mav.setViewName("materia");
		return mav;
	}
	
	@RequestMapping("/formMateria")
	public ModelAndView formEditarMateria(@Valid @ModelAttribute Materia materia, BindingResult result) {
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()) {
			mav.addObject("materia",materia);
			mav.setViewName("editarMateria");
		}
		else {
			materiaService.save(materia);
			mav.setViewName("materias");
		}
		return mav;
	}
	
	@RequestMapping("/formNuevaMateria")
	public ModelAndView formNuevaMateria(@Valid @ModelAttribute Materia materia, BindingResult result) {
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()) {
			mav.addObject("materia",materia);
			mav.setViewName("materia");
		}
		else {
			materiaService.save(materia);
			mav.setViewName("materias");
		}
		return mav;
	}

	
	@RequestMapping("/centros")
	public ModelAndView centros() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("centros");
		return mav;
	}
	
	@RequestMapping("/cargarCentro")
	public @ResponseBody TablaDTO cargarCentro(){
		List<CentroEscolar> centros = null;
		centros= centroService.findAll();
		List<String[]> lista = new ArrayList<>();
		for(CentroEscolar centro : centros) {
			lista.add(new String[] {centro.getCentroEscolarID().toString(), centro.getCentroEscolarID().toString(),centro.getCentroEscolarName().toString(),centro.getDireccion().toString()});
		}
		
		TablaDTO dto = new TablaDTO();
        dto.setData(lista);

		return dto;
	}
	
	@RequestMapping("/editarCentro")
	public ModelAndView editarCentro(@RequestParam Integer id) {
		ModelAndView mav = new ModelAndView();
		CentroEscolar centroE= new CentroEscolar();
		centroE=centroService.findOne(id);
		mav.addObject("municipios",municipioService.findAll());
		mav.addObject("departamentos",departamentoService.findAll());
		mav.addObject("centroEscolar",centroE);
		mav.setViewName("editarCentro");
		return mav;
	}
	
	@RequestMapping("/nuevoCentro")
	public ModelAndView nuevoCentro() {
		ModelAndView mav = new ModelAndView();
		CentroEscolar centroE= new CentroEscolar();
		List<Municipio> municipios = null;
		List<Departamento> departamentos = null;
		municipios=municipioService.findAll();
		departamentos = departamentoService.findAll();
		
		mav.addObject("municipios",municipios);
		mav.addObject("departamentos",departamentos);
		mav.addObject("centroEscolar",centroE);
		mav.setViewName("centro");
		return mav;
	}
	
	@RequestMapping("/formCentro")
	public ModelAndView formEditarCentro(@Valid @ModelAttribute CentroEscolar centro, BindingResult result) {
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()) {
			mav.addObject("municipios",municipioService.findAll());
			mav.addObject("departamentos",departamentoService.findAll());
			mav.addObject("centroEscolar",centro);
			mav.setViewName("editarCentro");
		}
		else {
			centroService.save(centro);
			mav.setViewName("centros");
		}
		return mav;
	}
	
	@RequestMapping("/formNuevoCentro")
	public ModelAndView formNuevoCentro(@Valid @ModelAttribute CentroEscolar centro, BindingResult result) {
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()) {
			mav.addObject("municipios",municipioService.findAll());
			mav.addObject("departamentos",departamentoService.findAll());
			mav.addObject("centroEscolar",centro);
			mav.setViewName("centro");
		}
		else {
			centroService.save(centro);
			mav.setViewName("centros");
		}
		return mav;
	}
}
