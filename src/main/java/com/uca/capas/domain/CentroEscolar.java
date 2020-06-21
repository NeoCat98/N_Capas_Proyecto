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
@Table(schema="public",name="CentroEscolar")
public class CentroEscolar {

	@Id
	@Column(name="CentroEscolarID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer centroEscolarID;
	
	@Column(name="CentroEscolarName")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String CentroEscolarName;
	
	@Column(name="Direccion")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String direccion;
	
	@OneToMany(mappedBy = "centroEscolar")
    private List<User> user;
	
	CentroEscolar(){
		
	}

	public Integer getCentroEscolarID() {
		return centroEscolarID;
	}

	public void setCentroEscolarID(Integer centroEscolarID) {
		this.centroEscolarID = centroEscolarID;
	}

	public String getCentroEscolarName() {
		return CentroEscolarName;
	}

	public void setCentroEscolarName(String centroEscolarName) {
		CentroEscolarName = centroEscolarName;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public List<User> getUser() {
		return user;
	}

	public void setUser(List<User> user) {
		this.user = user;
	}
	
}
