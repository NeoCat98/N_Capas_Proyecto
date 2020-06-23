package com.uca.capas.repositories;

import org.springframework.dao.DataAccessException;
import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.capas.domain.UserAdmin;

public interface UserAdminRepo extends JpaRepository<UserAdmin, Integer>{
	public UserAdmin findByUsername(String username) throws DataAccessException;
}
