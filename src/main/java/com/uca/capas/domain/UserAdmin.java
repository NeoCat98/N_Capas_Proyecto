package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(schema="public",name="UserAdmin")
public class UserAdmin {
	@Id
	@Column(name="UserAdminID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userAdminID;
	
	@ManyToOne
    @JoinColumn(name = "RolID")
    private Rol rol;
	
	@ManyToOne
    @JoinColumn(name = "CentroEscolarID")
    private CentroEscolar centroEscolar;
	
	@ManyToOne
	@JoinColumn(name= "MunicipioID")
	private Municipio municipio;
	
	@ManyToOne
	@JoinColumn(name="DepartamentoID")
	private Departamento departamento;
	
	@Column(name="Nombre")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String nombre;

	@Column(name="Apellido")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String apellido;
	
	@Column(name="BirthdayDate")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String birthdayDate;
	
	@Column(name="Edad")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String edad;
	
	@Column(name="Username")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String username;
	
	@Column(name="PasswordEncripted")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String passwordEncripted;
	
	@Column(name="Estado")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String Estado;
	
	
}
