package com.uca.capas.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.UserAdmin;

public interface UserAdminDAO {
	public List<UserAdmin> findAll() throws DataAccessException;
	public UserAdmin findOne(Integer userAdminID) throws DataAccessException;
	public void insert(UserAdmin userAdmin) throws DataAccessException;
	public void delete(Integer userAdminID) throws DataAccessException;
}
