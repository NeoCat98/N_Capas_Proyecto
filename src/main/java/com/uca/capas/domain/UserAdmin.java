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
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;
import java.text.ParseException;

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
	
	@Column(name="Nombre")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String nombre;

	@Column(name="Apellido")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String apellido;
	
	@Column(name="BirthdayDate")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@NotNull(message="Este campo no puede estar vacio")
	private Date birthdayDate;
	
	@Column(name="Edad")
	@NotNull(message="Este campo no puede estar vacio")
	private int edad;
	
	@Column(name="Username")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String username;

	@Column(name="Direccion")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String direccion;
	
	@Column(name="PasswordEncripted")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String passwordEncripted;
	
	@Column(name="Estado")
	@NotNull(message="Este campo no puede estar vacio")
	private Boolean Estado;

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

	public Date getBirthdayDate(){

		return birthdayDate;
	}

	public void setBirthdayDate(Date birthdayDate) {
		this.birthdayDate = birthdayDate;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasswordEncripted(){
		
		return passwordEncripted;
	}

	public void setPasswordEncripted(String passwordEncripted){
		
		this.passwordEncripted = passwordEncripted;
	}

	public Boolean getEstado() {
		return Estado;
	}

	public void setEstado(Boolean estado) {
		Estado = estado;
	}
	
	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	
	

	public UserAdmin() {
		super();
	}
	
	
}
