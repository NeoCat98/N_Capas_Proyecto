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
    private List<UserAdmin> user;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name= "MunicipioID")
	private Municipio municipio;
	
	@Transient
	private Integer municipioID;
	
	public CentroEscolar(){
		
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

	public List<UserAdmin> getUser() {
		return user;
	}

	public void setUser(List<UserAdmin> user) {
		this.user = user;
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
