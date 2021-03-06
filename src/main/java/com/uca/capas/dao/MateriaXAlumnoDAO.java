package com.uca.capas.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.MateriaXAlumno;
import com.uca.capas.domain.MateriaXAlumnoKey;

public interface MateriaXAlumnoDAO {
	public List<MateriaXAlumno> findAll() throws DataAccessException;
	public MateriaXAlumno findOne(Integer id) throws DataAccessException;
	public void insert(MateriaXAlumno mxa) throws DataAccessException;
	public void delete(Integer id) throws DataAccessException;
}
