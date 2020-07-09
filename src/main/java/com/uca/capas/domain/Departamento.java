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
@Table(schema="public",name="Departamento")
public class Departamento {
	@Id
	@Column(name="DepartamentoID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer departamentoID;
	
	@Column(name="DepartamentoName")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String departamentoName;
	
	public Departamento(){
		
	}

	public Integer getDepartamentoID() {
		return departamentoID;
	}

	public void setDepartamentoID(Integer departamentoID) {
		this.departamentoID = departamentoID;
	}

	public String getDepartamentoName() {
		return departamentoName;
	}

	public void setDepartamentoName(String departamentoName) {
		this.departamentoName = departamentoName;
	}
	
}
