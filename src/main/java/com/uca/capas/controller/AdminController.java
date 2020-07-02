package com.uca.capas.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.CentroEscolar;
import com.uca.capas.domain.Materia;
import com.uca.capas.domain.UserAdmin;
import com.uca.capas.dto.TablaDTO;
import com.uca.capas.service.CentroEscolarService;
import com.uca.capas.service.MateriaService;
import com.uca.capas.service.UserAdminService;



@Controller
public class AdminController {
	
	@Autowired
	UserAdminService userService;
	
	@Autowired
	MateriaService materiaService;
	
	@Autowired
	CentroEscolarService centroService;
	
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
		
		System.out.println(id.toString());
		mav.setViewName("index");
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
		
		System.out.println(id.toString());
		mav.setViewName("index");
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
		
		System.out.println(id.toString());
		mav.setViewName("index");
		return mav;
	}
	
	
}
