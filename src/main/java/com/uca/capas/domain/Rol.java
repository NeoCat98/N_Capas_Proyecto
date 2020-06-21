package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(schema="public",name="Rol")
public class Rol {
	
	@Id
	@Column(name="RolID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer rolID;
	
	@Column(name="RolName")
	@Size(message = "El nombre del rol no debe de tener mas de 50 caracteres",max=50)
	@NotEmpty(message="Este campo no puede estar vacio")
	private String rolName;
	
	@Column(name="RolPriority")
	@Size(message = "El nombre del rol no debe de tener mas de 50 caracteres",max=50)
	@NotEmpty(message="Este campo no puede estar vacio")
	private String rolPriority;
	
	@OneToOne(mappedBy = "rol")
    private User user;
}
