package com.uca.capas.domain;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(schema="public",name="Alumno")
public class Alumno {
	
	@Id
	@Column(name="AlumnoID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer alumnoID;
	
	@OneToMany(mappedBy = "alumno")
	List<MateriaXAlumno> materiaXAlumno;
	
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
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@NotNull(message="Este campo no puede estar vacio")
	private Date birthdayDate;
	
	@Column(name="Edad")
	@NotNull(message="Este campo no puede estar vacio")	
	private Integer edad;
	
	@Column(name="Direccion")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String direccion;
	
	@Column(name="TelefonoFijo")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String telefonoFijo;
	
	@Column(name="TelefonoMovil")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String telefonoMovil;

	@Column(name="NombreDelPadre")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String padre;
	
	@Column(name="NombreDeLaMadre")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String madre;

	public Alumno(){
		
	}
	
	public Integer getCentroEscolarfk() {
		return centroEscolarfk;
	}

	public void setCentroEscolarfk(Integer centroEscolarfk) {
		this.centroEscolarfk = centroEscolarfk;
	}

	public CentroEscolar getCentroEscolar() {
		return centroEscolar;
	}

	public void setCentroEscolar(CentroEscolar centroEscolar) {
		this.centroEscolar = centroEscolar;
	}

	public Integer getAlumnoID() {
		return alumnoID;
	}

	public void setAlumnoID(Integer alumnoID) {
		this.alumnoID = alumnoID;
	}

	public List<MateriaXAlumno> getMateriaXAlumno() {
		return materiaXAlumno;
	}

	public void setMateriaXAlumno(List<MateriaXAlumno> materiaXAlumno) {
		this.materiaXAlumno = materiaXAlumno;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCarnet() {
		return carnet;
	}

	public void setCarnet(String carnet) {
		this.carnet = carnet;
	}

	public Date getBirthdayDate() {
		return birthdayDate;
	}

	public void setBirthdayDate(Date birthdayDate) {
		this.birthdayDate = birthdayDate;
	}

	public Integer getEdad() {
		return edad;
	}

	public void setEdad(Integer edad) {
		this.edad = edad;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getTelefonoFijo() {
		return telefonoFijo;
	}

	public void setTelefonoFijo(String telefonoFijo) {
		this.telefonoFijo = telefonoFijo;
	}

	public String getTelefonoMovil() {
		return telefonoMovil;
	}

	public void setTelefonoMovil(String telefonoMovil) {
		this.telefonoMovil = telefonoMovil;
	}


	public String getPadre() {
		return padre;
	}

	public void setPadre(String padre) {
		this.padre = padre;
	}

	public String getMadre() {
		return madre;
	}

	public void setMadre(String madre) {
		this.madre = madre;
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
	
}
