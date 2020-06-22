package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Municipio;
import com.uca.capas.repositories.MunicipioRepo;

@Repository
public class MunicipioServiceImpl implements MunicipioService{

	@Autowired
	MunicipioRepo municipioRepo;
	
	@Override
	public List<Municipio> findAll() throws DataAccessException {
		return municipioRepo.findAll();
	}

	@Override
	public Municipio findOne(Integer municipioID) throws DataAccessException {
		return municipioRepo.getOne(municipioID);
	}

}
