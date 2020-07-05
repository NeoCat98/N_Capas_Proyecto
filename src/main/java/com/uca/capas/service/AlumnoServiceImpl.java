package com.uca.capas.service;

import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Alumno;
import com.uca.capas.domain.CentroEscolar;
import com.uca.capas.dto.AlumnoDTO;
import com.uca.capas.dto.ExpedienteDTO;
import com.uca.capas.repositories.AlumnoRepo;

@Repository
public class AlumnoServiceImpl implements AlumnoService{

	@Autowired
	AlumnoRepo alumnoRepo;
	
	@Override
	public List<Alumno> findAll() throws DataAccessException {
		return alumnoRepo.findAll();
	}

	@Override
	public Alumno findOne(Integer alumnoID) throws DataAccessException {
		return alumnoRepo.getOne(alumnoID);
	}

	@Override
	@Transactional
	public void insert(Alumno alumno) throws DataAccessException {
		alumnoRepo.save(alumno);
	}

	@Override
	@Transactional
	public void delete(Integer alumnoID) throws DataAccessException {
		alumnoRepo.deleteById(alumnoID);
	}



	@Override
	public List<AlumnoDTO> obtenerMateriasCursadas(int id) throws DataAccessException {
		
		List<AlumnoDTO> alumnos = alumnoRepo.obtenerMateriasCursadas(id).stream().map(obj->{
					AlumnoDTO e = new AlumnoDTO();
					e.setMateria(obj[0].toString());
					e.setNota(obj[1].toString());
					e.setAnio(Integer.parseInt(obj[2].toString()));
					e.setCiclo(Integer.parseInt(obj[3].toString()));
					e.setResultado(Boolean.valueOf(obj[4].toString()));
					return e;
		}).collect(Collectors.toList());
		
		return alumnos;
	}

	@Override
	public List<ExpedienteDTO> obtenerExpedienteNombre(String nombre, String apellido) throws DataAccessException {
		List<ExpedienteDTO> expedientes = alumnoRepo.obtenerExpedienteNombre(nombre, apellido) .stream().map(obj->{
				ExpedienteDTO e = new ExpedienteDTO();
				e.setAlumnoid(Integer.parseInt(obj[0].toString()));
				e.setNombre(obj[1].toString());
				e.setApellido(obj[2].toString());
				e.setMateriasA(Integer.parseInt(obj[3].toString()));
				e.setMateriasR(Integer.parseInt(obj[4].toString()));
				e.setPromedio(Float.parseFloat(obj[5].toString()));
			return e;
		}).collect(Collectors.toList());

		return expedientes;
	}
	

	

}
