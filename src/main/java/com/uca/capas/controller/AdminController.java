package com.uca.capas.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.UserAdmin;
import com.uca.capas.dto.TablaDTO;
import com.uca.capas.service.UserAdminService;



@Controller
public class AdminController {
	
	@Autowired
	UserAdminService userService;
	
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
	public ModelAndView editar(@RequestParam Integer id) {
		ModelAndView mav = new ModelAndView();
		
		System.out.println(id.toString());
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping("/usuarios")
	public ModelAndView inicioSesion() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("usuarios");
		return mav;
	}
}
