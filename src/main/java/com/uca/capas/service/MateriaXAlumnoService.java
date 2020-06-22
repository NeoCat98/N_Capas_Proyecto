package com.uca.capas.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.MateriaXAlumno;
import com.uca.capas.domain.MateriaXAlumnoKey;

public interface MateriaXAlumnoService {
	public List<MateriaXAlumno> findAll() throws DataAccessException;
	public MateriaXAlumno findOne(MateriaXAlumnoKey materiaXAlumnoKey) throws DataAccessException;
	public void insert(MateriaXAlumno materiaXAlumno) throws DataAccessException;
	public void delete(MateriaXAlumnoKey materiaXAlumnoKey) throws DataAccessException;
}
