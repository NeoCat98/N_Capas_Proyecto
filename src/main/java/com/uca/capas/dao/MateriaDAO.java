package com.uca.capas.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.Materia;

public interface MateriaDAO {
	public List<Materia> findAll() throws DataAccessException;
	public Materia findOne(Integer materiaID) throws DataAccessException;
	public void insert(Materia materia) throws DataAccessException;
	public void delete(Integer materiaID) throws DataAccessException;
}
