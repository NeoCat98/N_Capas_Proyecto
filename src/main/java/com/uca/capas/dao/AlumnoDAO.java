package com.uca.capas.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.Alumno;

public interface AlumnoDAO {
	public List<Alumno> findAll() throws DataAccessException;
	public Alumno findOne(Integer alumnoID) throws DataAccessException;
	public void insert(Alumno alumno) throws DataAccessException;
	public void delete(Integer alumnoID) throws DataAccessException;
}
