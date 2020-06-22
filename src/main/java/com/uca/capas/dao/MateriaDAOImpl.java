package com.uca.capas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Materia;

@Repository
public class MateriaDAOImpl implements MateriaDAO{

	@PersistenceContext(unitName="capas")
	private EntityManager entityManager;
	
	@Override
	public List<Materia> findAll() throws DataAccessException {
		StringBuffer sb = new StringBuffer();
		sb.append("select * from public.materia");
		Query query = entityManager.createNativeQuery(sb.toString(), Materia.class);
		List<Materia> resultset = query.getResultList();
		return resultset;
	}

	@Override
	public Materia findOne(Integer materiaID) throws DataAccessException {
		return entityManager.find(Materia.class, materiaID);
	}

	@Transactional
	@Override
	public void insert(Materia materia) throws DataAccessException {
		entityManager.persist(materia);
	}

	@Transactional
	@Override
	public void delete(Integer materiaID) throws DataAccessException {
		Materia materia = entityManager.find(Materia.class, materiaID);
		entityManager.remove(materia);
	}

}
