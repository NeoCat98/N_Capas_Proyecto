package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Materia;
import com.uca.capas.repositories.MateriaRepo;

@Repository
public class MateriaServiceImpl implements MateriaService{
	
	@Autowired
	MateriaRepo materiaRepo;
	
	@Override
	public List<Materia> findAll() throws DataAccessException {
		return materiaRepo.findAll();
	}

	@Override
	public Materia findOne(Integer materiaID) throws DataAccessException {
		return materiaRepo.getOne(materiaID);
	}

	@Override
	public void insert(Materia materia) throws DataAccessException {
		materiaRepo.save(materia);
	}

	@Override
	public void delete(Integer materiaID) throws DataAccessException {
		materiaRepo.deleteById(materiaID);
	}

}
