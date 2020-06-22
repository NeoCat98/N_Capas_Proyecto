package com.uca.capas.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.Rol;

public interface RolService {
	public List<Rol> findAll() throws DataAccessException;
	public Rol findOne(Integer rolID) throws DataAccessException;
}
