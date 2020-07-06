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
import com.uca.capas.domain.Materia;
import com.uca.capas.domain.MateriaXAlumno;
import com.uca.capas.domain.Municipio;
import com.uca.capas.domain.UserAdmin;
import com.uca.capas.dto.AlumnoDTO;
import com.uca.capas.dto.ExpedienteDTO;
import com.uca.capas.dto.TablaDTO;
import com.uca.capas.service.AlumnoService;
import com.uca.capas.service.CentroEscolarService;
import com.uca.capas.service.MateriaService;
import com.uca.capas.service.MateriaXAlumnoService;
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
	
	@Autowired
	MateriaXAlumnoService mxaService;
	
	@Autowired
	MateriaService materiaService;
	
	
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
		List<Municipio> municipios=null;
		List<CentroEscolar> centros=null;
		
		alumno=alumnoService.findOne(alumnoid);
		municipios= municipioService.findAll();
		centros=centroService.findAll();

		mav.addObject("centros",centros);
		mav.addObject("municipios",municipios);
		mav.addObject("alumno",alumno);
		mav.setViewName("editarExpediente");
		return mav;
	}
	
	@RequestMapping("/materiasCursadas")
	public ModelAndView materiasCursadas(@RequestParam Integer alumnoid) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("alumnoid",alumnoid);
		mav.setViewName("materiasCursadas");
		return mav;
	}
	
	@RequestMapping("/cargaMaterias")
	public @ResponseBody TablaDTO cargaMateras(@RequestParam Integer alumnoid) {
		
		List<AlumnoDTO> alumnos=alumnoService.obtenerMateriasCursadas(alumnoid);

		List<String[]> lista = new ArrayList<>();
		
		for(AlumnoDTO e : alumnos){
			
			
			lista.add(new String[] {e.getid().toString(),e.getMateria().toString(),
					e.getAnio().toString(),e.getCiclo().toString(),e.getNota().toString(),
					e.getResultadoDelegate().toString()});
		}

		TablaDTO dto = new TablaDTO();
        dto.setData(lista);
		return dto;
	}
	
	@RequestMapping("/NuevaMateriaCursada")
	public ModelAndView NuevaMateriaCursada() {
		ModelAndView mav = new ModelAndView();
		List<Materia> materias =  null;
		MateriaXAlumno mxa = new MateriaXAlumno();
		
		materias= materiaService.findAll();
		
		mav.addObject("materias",materias);
		mav.addObject("mxa",mxa);
		mav.setViewName("nuevaMateriaCursada");
		return mav;
		
	}
	
	@RequestMapping("/editarMateriaCursada")
	public ModelAndView editarMateriaCursada(@RequestParam Integer id) {
		ModelAndView mav = new ModelAndView();
		List<Materia> materias =  null;
		MateriaXAlumno mxa= new MateriaXAlumno();
		
		materias= materiaService.findAll();
		mxa = mxaService.findOne(id);
		

		
		
		mav.addObject("materias",materias);
		mav.addObject("mxa",mxa);
		mav.setViewName("editarMateriaCursada");
		return mav;
	}
	
	@RequestMapping("/formMateriaCursada")
	public ModelAndView formMateriaCursada(@ModelAttribute MateriaXAlumno mxa) {
		ModelAndView mav = new ModelAndView();
		
		if(mxa.getNota() < 6.0) {
			mxa.setResultado(false);
		}else {
			mxa.setResultado(true);
		}
		
		
		mxaService.insert(mxa);
		
		mav.addObject("alumnoid",mxa.getAlumno().getAlumnoID());
		mav.setViewName("materiasCursadas");
		return mav;
	}
	
}