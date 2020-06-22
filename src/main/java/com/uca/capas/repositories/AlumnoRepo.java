package com.uca.capas.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.capas.domain.Alumno;

public interface AlumnoRepo extends JpaRepository<Alumno, Integer> {

}
