package com.uca.capas.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.Materia;
import com.uca.capas.domain.UserAdmin;

public interface MateriaService {
	public List<Materia> findAll() throws DataAccessException;
	public Materia findOne(Integer materiaID) throws DataAccessException;
	public void insert(Materia materia) throws DataAccessException;
	public void delete(Integer materiaID) throws DataAccessException;
	public void save(Materia materia) throws DataAccessException;
}
