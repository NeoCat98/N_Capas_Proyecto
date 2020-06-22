package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.MateriaXAlumno;
import com.uca.capas.domain.MateriaXAlumnoKey;
import com.uca.capas.repositories.MateriaXAlumnoRepo;

@Repository
public class MateriaXAlumnoServiceImpl implements MateriaXAlumnoService{

	@Autowired
	MateriaXAlumnoRepo materiaXAlumnoRepo;
	
	@Override
	public List<MateriaXAlumno> findAll() throws DataAccessException {
		return materiaXAlumnoRepo.findAll();
	}

	@Override
	public MateriaXAlumno findOne(MateriaXAlumnoKey materiaXAlumnoKey) throws DataAccessException {
		return materiaXAlumnoRepo.getOne(materiaXAlumnoKey);
	}

	@Override
	public void insert(MateriaXAlumno materiaXAlumno) throws DataAccessException {
		materiaXAlumnoRepo.save(materiaXAlumno);
	}

	@Override
	public void delete(MateriaXAlumnoKey materiaXAlumnoKey) throws DataAccessException {
		materiaXAlumnoRepo.deleteById(materiaXAlumnoKey);
	}

}
