package com.uca.capas.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Alumno;
import com.uca.capas.domain.CentroEscolar;
import com.uca.capas.repositories.AlumnoRepo;

@Repository
public class AlumnoServiceImpl implements AlumnoService{

	@Autowired
	AlumnoRepo alumnoRepo;
	
	@Override
	public List<Alumno> findAll() throws DataAccessException {
		return alumnoRepo.findAll();
	}

	@Override
	public Alumno findOne(Integer alumnoID) throws DataAccessException {
		return alumnoRepo.getOne(alumnoID);
	}

	@Override
	@Transactional
	public void insert(Alumno alumno) throws DataAccessException {
		alumnoRepo.save(alumno);
	}

	@Override
	@Transactional
	public void delete(Integer alumnoID) throws DataAccessException {
		alumnoRepo.deleteById(alumnoID);
	}

	@Override
	public List<Alumno> buscarFLname(String firstName, String lastName) throws DataAccessException {
		
		return alumnoRepo.findByFirstNameLikeAndLastNameLike(firstName, lastName);
	}

	@Override
	public List<Alumno> buscarFLnameAndC(String firstName, String lastName, Integer centroEscolar){
		
		return alumnoRepo.findByFirstNameLikeAndLastNameLikeANDCentroEscolar(firstName, lastName, centroEscolar);
	}

}
