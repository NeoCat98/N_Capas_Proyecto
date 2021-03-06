package com.uca.capas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Municipio;

@Repository
public class MunicipioDAOImpl implements MunicipioDAO{
	
	@PersistenceContext(unitName="capas")
	private EntityManager entityManager;
	
	@Override
	public List<Municipio> findAll() throws DataAccessException {
		StringBuffer sb = new StringBuffer();
		sb.append("select * from public.municipio");
		Query query = entityManager.createNativeQuery(sb.toString(), Municipio.class);
		List<Municipio> resultset = query.getResultList();
		return resultset;
	}

	@Override
	public Municipio findOne(Integer municipioID) throws DataAccessException {
		return entityManager.find(Municipio.class, municipioID);
	}

}
