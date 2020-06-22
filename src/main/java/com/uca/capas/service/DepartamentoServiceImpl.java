package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Departamento;
import com.uca.capas.repositories.DepartamentoRepo;

@Repository
public class DepartamentoServiceImpl implements DepartamentoService{

	@Autowired
	DepartamentoRepo departamentoRepo;

	@Override
	public List<Departamento> findAll() throws DataAccessException {
		return departamentoRepo.findAll();
	}

	@Override
	public Departamento findOne(Integer departamentoID) throws DataAccessException {
		return departamentoRepo.getOne(departamentoID);
	}
	
}
