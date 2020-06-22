package com.uca.capas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Alumno;

@Repository
public class AlumnoDAOImpl implements AlumnoDAO{

	@PersistenceContext(unitName="capas")
	private EntityManager entityManager;
	
	@Override
	public List<Alumno> findAll() throws DataAccessException {
		StringBuffer sb = new StringBuffer();
		sb.append("select * from public.alumno");
		Query query = entityManager.createNativeQuery(sb.toString(), Alumno.class);
		List<Alumno> resultset = query.getResultList();
		return resultset;
	}

	@Override
	public Alumno findOne(Integer alumnoID) throws DataAccessException {
		return entityManager.find(Alumno.class, alumnoID);
	}

	@Transactional
	@Override
	public void insert(Alumno alumno) throws DataAccessException {
		entityManager.persist(alumno);
	}
	
	@Transactional
	@Override
	public void delete(Integer alumnoID) throws DataAccessException {
		Alumno alumno = entityManager.find(Alumno.class, alumnoID);
		entityManager.remove(alumno);
	}

}
