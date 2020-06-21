package com.uca.capas.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(schema="public",name="User")
public class User {
	@Id
	@Column(name="UserID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userID;
	
	@OneToOne
    @JoinColumn(name = "RolID", referencedColumnName = "RolID")
    private Rol rol;
	
	@ManyToMany
	@JoinTable(
			  name = "MateriaXUser", 
			  joinColumns = @JoinColumn(name = "UserID"), 
			  inverseJoinColumns = @JoinColumn(name = "MateriaID"))
	List<Materia> materias;
	
	@OneToOne(mappedBy = "user")
    private Login login;
	
	@Column(name="FirstName")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String firstName;

	@Column(name="LastName")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String lastName;
	
	@Column(name="Carnet")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String carnet;
	
	@Column(name="BirthdayDate")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String birthdayDate;
	
	@Column(name="Edad")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String edad;
	
	@Column(name="Direccion")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String direccion;
	
	@Column(name="TelefonoFijo")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String telefonoFijo;
	
	@Column(name="TelefonoMovil")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String telefonoMovil;
	
	@Column(name="InstitucionDeProcedencia")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String institucion;
	
	@Column(name="NombreDelPadre")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String padre;
	
	@Column(name="NombreDeLaMadre")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String madre;
}
