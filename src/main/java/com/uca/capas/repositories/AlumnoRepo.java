package com.uca.capas.repositories;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.uca.capas.domain.Alumno;
import com.uca.capas.domain.CentroEscolar;

public interface AlumnoRepo extends JpaRepository<Alumno, Integer> {

	@Query(value = "select a from Alumno a where a.firstname like %?1 and a.lastname like %?2 and a.centroescolarid = ?3", nativeQuery = true)
	List<Alumno> findByFirstNameLikeAndLastNameLikeANDCentroEscolar(String firstName, String lastName, Integer centroEscolar) throws DataAccessException;

	List<Alumno> findByFirstNameLikeAndLastNameLike(String firstName, String lastName) throws DataAccessException;
	
}
