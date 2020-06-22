package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.UserAdmin;
import com.uca.capas.repositories.UserAdminRepo;

@Repository
public class UserAdminServiceImpl implements UserAdminService{

	@Autowired
	UserAdminRepo userAdminRepo;
	
	@Override
	public List<UserAdmin> findAll() throws DataAccessException {
		return userAdminRepo.findAll();
	}

	@Override
	public UserAdmin findOne(Integer userAdminID) throws DataAccessException {
		return userAdminRepo.getOne(userAdminID);
	}

	@Override
	public void insert(UserAdmin userAdmin) throws DataAccessException {
		userAdminRepo.save(userAdmin);
	}

	@Override
	public void delete(Integer userAdminID) throws DataAccessException {
		userAdminRepo.deleteById(userAdminID);
	}

}
