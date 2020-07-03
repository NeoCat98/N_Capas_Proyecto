package com.uca.capas.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.CentroEscolar;
import com.uca.capas.repositories.CentroEscolarRepo;

@Repository
public class CentroEscolarServiceImpl implements CentroEscolarService{

	@Autowired
	CentroEscolarRepo centroEscolarRepo;
	
	@Override
	public List<CentroEscolar> findAll() throws DataAccessException {
		return centroEscolarRepo.findAll();
	}

	@Override
	public CentroEscolar findOne(Integer centroEscolarID) throws DataAccessException {
		return centroEscolarRepo.getOne(centroEscolarID);
	}

	@Override
	@Transactional
	public void save(CentroEscolar centroEscolar) throws DataAccessException {
		centroEscolarRepo.save(centroEscolar);
	}

	@Override
	@Transactional
	public void delete(Integer centroEscolarID) throws DataAccessException {
		centroEscolarRepo.deleteById(centroEscolarID);
	}

}
