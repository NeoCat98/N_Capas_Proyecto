package com.uca.capas.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.Rol;

public interface RolDAO {
	public List<Rol> findAll() throws DataAccessException;
	public Rol findOne(Integer rolID) throws DataAccessException;
}
