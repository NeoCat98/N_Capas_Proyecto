package com.uca.capas.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.UserAdmin;

public interface UserAdminService {
	public List<UserAdmin> findAll() throws DataAccessException;
	public UserAdmin findOne(Integer userAdminID) throws DataAccessException;
	public void insert(UserAdmin userAdmin) throws DataAccessException;
	public void delete(Integer userAdminID) throws DataAccessException;
	public void save(UserAdmin user) throws DataAccessException;
	public UserAdmin findByUsername(String user) throws DataAccessException;
}
