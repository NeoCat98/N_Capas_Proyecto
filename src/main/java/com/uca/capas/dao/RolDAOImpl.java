package com.uca.capas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Rol;

@Repository
public class RolDAOImpl implements RolDAO{

	@PersistenceContext(unitName="capas")
	private EntityManager entityManager;
	
	@Override
	public List<Rol> findAll() throws DataAccessException {
		StringBuffer sb = new StringBuffer();
		sb.append("select * from public.rol");
		Query query = entityManager.createNativeQuery(sb.toString(), Rol.class);
		List<Rol> resultset = query.getResultList();
		return resultset;
	}

	@Override
	public Rol findOne(Integer rolID) throws DataAccessException {
		return entityManager.find(Rol.class, rolID);
	}

}
