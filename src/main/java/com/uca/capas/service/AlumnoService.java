package com.uca.capas.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.Alumno;
import com.uca.capas.domain.CentroEscolar;
import com.uca.capas.dto.AlumnoDTO;
import com.uca.capas.dto.ExpedienteDTO;

public interface AlumnoService {
	public List<Alumno> findAll() throws DataAccessException;

	public Alumno findOne(Integer alumnoID) throws DataAccessException;

	public void insert(Alumno alumno) throws DataAccessException;

	public void delete(Integer alumnoID) throws DataAccessException;


	public List<AlumnoDTO> obtenerMateriasCursadas(int id) throws DataAccessException;
	
	public List<ExpedienteDTO> obtenerExpedienteNombre(String nombre, String apellido) throws DataAccessException;

}
