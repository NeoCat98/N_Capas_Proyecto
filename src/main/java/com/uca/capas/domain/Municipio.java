package com.uca.capas.domain;

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

@Entity
@Table(schema="public",name="Municipio")
public class Municipio {
	@Id
	@Column(name="MunicipioID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer municipioID;
	
	@Column(name="MunicipioName")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String municipioName;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name= "DepartamentoId")
	private Departamento departamento;
	
	@Transient
	private Integer DepartamentoId;
	
	@OneToMany(mappedBy = "municipio")
    private List<UserAdmin> user;
	
	@OneToMany(mappedBy = "municipio")
    private List<Alumno> alumnos;
	
	@OneToMany(mappedBy = "municipio")
    private List<CentroEscolar> centroEscolar;

	Municipio(){
		
	}
	
	public Integer getMunicipioID() {
		return municipioID;
	}

	public void setMunicipioID(Integer municipioID) {
		this.municipioID = municipioID;
	}

	public String getMunicipioName() {
		return municipioName;
	}

	public void setMunicipioName(String municipioName) {
		this.municipioName = municipioName;
	}

	public List<UserAdmin> getUser() {
		return user;
	}

	public void setUser(List<UserAdmin> user) {
		this.user = user;
	}

	public Departamento getDepartamento() {
		return departamento;
	}

	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}

	public Integer getDepartamentoId() {
		return DepartamentoId;
	}

	public void setDepartamentoId(Integer departamentoId) {
		DepartamentoId = departamentoId;
	}

	public List<Alumno> getAlumnos() {
		return alumnos;
	}

	public void setAlumnos(List<Alumno> alumnos) {
		this.alumnos = alumnos;
	}

	public List<CentroEscolar> getCentroEscolar() {
		return centroEscolar;
	}

	public void setCentroEscolar(List<CentroEscolar> centroEscolar) {
		this.centroEscolar = centroEscolar;
	}
	
	
}
