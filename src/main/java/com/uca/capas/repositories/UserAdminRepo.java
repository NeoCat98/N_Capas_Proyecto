package com.uca.capas.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.capas.domain.UserAdmin;

public interface UserAdminRepo extends JpaRepository<UserAdmin, Integer>{

}
