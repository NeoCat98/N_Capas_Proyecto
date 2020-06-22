package com.uca.capas.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.CentroEscolar;

public interface CentroEscolarDAO {
	public List<CentroEscolar> findAll() throws DataAccessException;
	public CentroEscolar findOne(Integer centroEscolarID) throws DataAccessException;
	public void insert(CentroEscolar centroEscolar) throws DataAccessException;
	public void delete(Integer centroEscolarID) throws DataAccessException;
}
