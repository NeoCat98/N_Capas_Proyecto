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
@Table(schema="public",name="Municipio")
public class Municipio {
	@Id
	@Column(name="MunicipioID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer municipioID;
	
	@Column(name="MunicipioName")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String municipioName;
	
	@OneToMany(mappedBy = "municipio")
    private List<User> user;

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

	public List<User> getUser() {
		return user;
	}

	public void setUser(List<User> user) {
		this.user = user;
	}
	
	
}
