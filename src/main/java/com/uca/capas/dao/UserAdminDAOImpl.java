package com.uca.capas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.UserAdmin;

@Repository
public class UserAdminDAOImpl implements UserAdminDAO{

	@PersistenceContext(unitName="capas")
	private EntityManager entityManager;
	
	@Override
	public List<UserAdmin> findAll() throws DataAccessException {
		StringBuffer sb = new StringBuffer();
		sb.append("select * from public.useradmin");
		Query query = entityManager.createNativeQuery(sb.toString(), UserAdmin.class);
		List<UserAdmin> resultset = query.getResultList();
		return resultset;
	}

	@Override
	public UserAdmin findOne(Integer userAdminID) throws DataAccessException {
		return entityManager.find(UserAdmin.class, userAdminID);
	}

	@Transactional
	@Override
	public void insert(UserAdmin userAdmin) throws DataAccessException {
		entityManager.persist(userAdmin);
	}

	@Transactional
	@Override
	public void delete(Integer userAdminID) throws DataAccessException {
		UserAdmin userAdmin = entityManager.find(UserAdmin.class, userAdminID);
		entityManager.remove(userAdmin);
	}

}
