package com.uca.capas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.CentroEscolar;

@Repository
public class CentroEscolarDAOImpl implements CentroEscolarDAO{

	@PersistenceContext(unitName="capas")
	private EntityManager entityManager;
	
	@Override
	public List<CentroEscolar> findAll() throws DataAccessException {
		StringBuffer sb = new StringBuffer();
		sb.append("select * from public.centroescolar");
		Query query = entityManager.createNativeQuery(sb.toString(), CentroEscolar.class);
		List<CentroEscolar> resultset = query.getResultList();
		return resultset;
	}

	@Override
	public CentroEscolar findOne(Integer centroEscolarID) throws DataAccessException {
		return entityManager.find(CentroEscolar.class, centroEscolarID);
	}

	@Transactional
	@Override
	public void insert(CentroEscolar centroEscolar) throws DataAccessException {
		entityManager.persist(centroEscolar);
	}

	@Transactional
	@Override
	public void delete(Integer centroEscolarID) throws DataAccessException {
		CentroEscolar centroEscolar = entityManager.find(CentroEscolar.class, centroEscolarID);
		entityManager.remove(centroEscolar);
	}

}
