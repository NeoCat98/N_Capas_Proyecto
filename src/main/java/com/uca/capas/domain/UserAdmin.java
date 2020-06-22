package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(schema="public",name="UserAdmin")
public class UserAdmin {
	@Id
	@Column(name="UserAdminID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userAdminID;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "RolID")
    private Rol rol;
	
	@Transient
	private Integer rolID;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CentroEscolarID")
    private CentroEscolar centroEscolar;
	
	@Transient
	private Integer centroEscolarfk;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name= "MunicipioID")
	private Municipio municipio;
	
	@Transient
	private Integer municipioID;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="DepartamentoID")
	private Departamento departamento;
		
	@Transient
	private Integer departamentoID;
	
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

	public Integer getUserAdminID() {
		return userAdminID;
	}

	public void setUserAdminID(Integer userAdminID) {
		this.userAdminID = userAdminID;
	}

	public Rol getRol() {
		return rol;
	}

	public void setRol(Rol rol) {
		this.rol = rol;
	}

	public Integer getRolID() {
		return rolID;
	}

	public void setRolID(Integer rolID) {
		this.rolID = rolID;
	}

	public CentroEscolar getCentroEscolar() {
		return centroEscolar;
	}

	public void setCentroEscolar(CentroEscolar centroEscolar) {
		this.centroEscolar = centroEscolar;
	}

	public Integer getCentroEscolarfk() {
		return centroEscolarfk;
	}

	public void setCentroEscolarfk(Integer centroEscolarfk) {
		this.centroEscolarfk = centroEscolarfk;
	}

	public Municipio getMunicipio() {
		return municipio;
	}

	public void setMunicipio(Municipio municipio) {
		this.municipio = municipio;
	}

	public Integer getMunicipioID() {
		return municipioID;
	}

	public void setMunicipioID(Integer municipioID) {
		this.municipioID = municipioID;
	}

	public Departamento getDepartamento() {
		return departamento;
	}

	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}

	public Integer getDepartamentoID() {
		return departamentoID;
	}

	public void setDepartamentoID(Integer departamentoID) {
		this.departamentoID = departamentoID;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getBirthdayDate() {
		return birthdayDate;
	}

	public void setBirthdayDate(String birthdayDate) {
		this.birthdayDate = birthdayDate;
	}

	public String getEdad() {
		return edad;
	}

	public void setEdad(String edad) {
		this.edad = edad;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasswordEncripted() {
		return passwordEncripted;
	}

	public void setPasswordEncripted(String passwordEncripted) {
		this.passwordEncripted = passwordEncripted;
	}

	public String getEstado() {
		return Estado;
	}

	public void setEstado(String estado) {
		Estado = estado;
	}

	public UserAdmin() {
		super();
	}
	
	
}
