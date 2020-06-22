package com.uca.capas.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(schema="public",name="Alumno")
public class Alumno {
	
	@Id
	@Column(name="AlumnoID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer alumnoID;
	
	@OneToMany(mappedBy = "alumno")
	List<MateriaXAlumno> materiaXAlumno;
	
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

	Alumno(){
		
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

	public String getInstitucion() {
		return institucion;
	}

	public void setInstitucion(String institucion) {
		this.institucion = institucion;
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
	
}