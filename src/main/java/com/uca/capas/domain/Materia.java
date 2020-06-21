package com.uca.capas.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(schema="public",name="Materia")
public class Materia {
	@Id
	@Column(name="MateriaID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer materiaID;
	
	@Column(name="MateriaName")
	@Size(message = "El nombre de la materia no debe de tener mas de 50 caracteres",max=50)
	@NotEmpty(message="Este campo no puede estar vacio")
	private String MateriaName;
	
	@ManyToMany(mappedBy = "materias")
	List<User> usuarios;
	
}
