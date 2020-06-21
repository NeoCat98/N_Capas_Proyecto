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
@Table(schema="public",name="Materia")
public class Materia {
	@Id
	@Column(name="MateriaID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer materiaID;
	
	@Column(name="MateriaName")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String MateriaName;
	
	@OneToMany(mappedBy = "materia")
	List<MateriaXAlumno> materiaXAlumno;
	
	Materia(){
		
	}

	public Integer getMateriaID() {
		return materiaID;
	}

	public void setMateriaID(Integer materiaID) {
		this.materiaID = materiaID;
	}

	public String getMateriaName() {
		return MateriaName;
	}

	public void setMateriaName(String materiaName) {
		MateriaName = materiaName;
	}

	public List<MateriaXAlumno> getMateriaXAlumno() {
		return materiaXAlumno;
	}

	public void setMateriaXAlumno(List<MateriaXAlumno> materiaXAlumno) {
		this.materiaXAlumno = materiaXAlumno;
	}
	
}
