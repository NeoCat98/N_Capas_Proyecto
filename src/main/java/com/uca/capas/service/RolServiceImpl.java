package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Rol;
import com.uca.capas.repositories.RolRepo;

@Repository
public class RolServiceImpl implements RolService{

	@Autowired
	RolRepo rolRepo;
	
	@Override
	public List<Rol> findAll() throws DataAccessException {
		return rolRepo.findAll();
	}

	@Override
	public Rol findOne(Integer rolID) throws DataAccessException {
		return rolRepo.getOne(rolID);
	}

}
