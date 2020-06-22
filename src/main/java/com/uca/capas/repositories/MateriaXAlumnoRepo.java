package com.uca.capas.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.capas.domain.MateriaXAlumno;
import com.uca.capas.domain.MateriaXAlumnoKey;

public interface MateriaXAlumnoRepo extends JpaRepository<MateriaXAlumno, MateriaXAlumnoKey>{

}
