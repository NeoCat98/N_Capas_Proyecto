package com.uca.capas.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Alumno;
import com.uca.capas.domain.CentroEscolar;
import com.uca.capas.domain.Municipio;
import com.uca.capas.domain.UserAdmin;
import com.uca.capas.dto.AlumnoDTO;
import com.uca.capas.dto.ExpedienteDTO;
import com.uca.capas.dto.TablaDTO;
import com.uca.capas.service.AlumnoService;
import com.uca.capas.service.CentroEscolarService;
import com.uca.capas.service.MunicipioService;
import com.uca.capas.service.UserAdminService;

@Controller
public class CoordinadorController {

	@Autowired
	UserAdminService userAdminService;

	@Autowired
	AlumnoService alumnoService;

	@Autowired
	CentroEscolarService centroService;
	
	@Autowired
	MunicipioService municipioService;
	
	
	@RequestMapping("/coordinadorIndex")
	public ModelAndView coordinadorIndex() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("co-buscador");
		return mav;
		
	}
	
	
	@RequestMapping("/nuevoExpediente")
	public ModelAndView nuevoExpediente() {
		ModelAndView mav = new ModelAndView();
		Alumno alumno = new Alumno();
		List<Municipio> municipios = null;
		List<CentroEscolar> centros = null;
		
		
		municipios= municipioService.findAll();
		centros=centroService.findAll();
		
		mav.addObject("municipios",municipios);
		mav.addObject("centros",centros);
		mav.addObject("alumno",alumno);
		mav.setViewName("nuevoExpediente");
		return mav;
		
	}
	

	@RequestMapping("/formExpediente")
	public ModelAndView formExpediente(@ModelAttribute Alumno alumno) {
		ModelAndView mav = new ModelAndView();
		
		alumnoService.insert(alumno);
		
		mav.setViewName("co-buscador");
		return mav;
	}
	
	@RequestMapping("/expedientes")
	public ModelAndView usuario(@RequestParam String tipoBusqueda, @RequestParam String valorAlumno) {
		ModelAndView mav = new ModelAndView();
		
		System.out.println(tipoBusqueda);
		System.out.println(valorAlumno);
		mav.addObject("tipoBusqueda",tipoBusqueda);
		mav.addObject("valorAlumno",valorAlumno);
		mav.setViewName("expedientes");
		return mav;
	}
	
	@RequestMapping("/cargaExpedientes")
	public @ResponseBody TablaDTO cargaExpedientes(@RequestParam String tipoBusqueda, @RequestParam String valorAlumno) {
		
		System.out.println("Controlador2: "+tipoBusqueda);
		System.out.println(valorAlumno);
		
		List<ExpedienteDTO> expedientes = null;
		List<String[]> lista = new ArrayList<>();
		if(tipoBusqueda.equals("0")) {
			expedientes=alumnoService.obtenerExpedienteNombre(valorAlumno, "");
		}else {
			expedientes=alumnoService.obtenerExpedienteNombre("", valorAlumno);
		}
		for(ExpedienteDTO exp : expedientes) {
			
			lista.add(new String[] {exp.getAlumnoid().toString(),exp.getNombre().toString(),exp.getApellido().toString()
					,exp.getMateriasA().toString(),exp.getMateriasR().toString(),exp.getPromedio().toString()});
		}
		
		TablaDTO dto = new TablaDTO();
        dto.setData(lista);

		return dto;
		
	}
	
	@RequestMapping("/editarExpediente")
	public ModelAndView editarExpediente(@RequestParam Integer alumnoid) {
		ModelAndView mav = new ModelAndView();
		Alumno alumno = new Alumno();
		alumno=alumnoService.findOne(alumnoid);
		mav.addObject("alumno",alumno);
		mav.setViewName("editarExpediente");
		return mav;
	}
	
	@RequestMapping("/materiasCursadas")
	public ModelAndView materiasCursadas(@RequestParam Integer alumnoid) {
		
		ModelAndView mav = new ModelAndView();
		List<AlumnoDTO> alumnos=alumnoService.obtenerMateriasCursadas(alumnoid);
		
		for(AlumnoDTO e : alumnos){
			System.out.println(e.getMateria());
			System.out.println(e.getNota());
			System.out.println(e.getResultadoDelegate());
			System.out.println(e.getAnio());
			System.out.println(e.getCiclo());
		}
		
		
		mav.setViewName("index");
		return mav;
	}
	
	
}