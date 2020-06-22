package com.uca.capas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Departamento;
import com.uca.capas.domain.Municipio;

@Repository
public class DepartamentoDAOImpl implements DepartamentoDAO{

	@PersistenceContext(unitName="capas")
	private EntityManager entityManager;
	
	@Override
	public List<Departamento> findAll() throws DataAccessException {
		StringBuffer sb = new StringBuffer();
		sb.append("select * from public.departamento");
		Query query = entityManager.createNativeQuery(sb.toString(), Departamento.class);
		List<Departamento> resultset = query.getResultList();
		return resultset;
	}

	@Override
	public Departamento findOne(Integer departamentoID) throws DataAccessException {
		return entityManager.find(Departamento.class, departamentoID);
	}

}
