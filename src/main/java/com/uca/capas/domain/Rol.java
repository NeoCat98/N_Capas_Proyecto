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
import javax.validation.constraints.Size;

@Entity
@Table(schema="public",name="Rol")
public class Rol {
	
	@Id
	@Column(name="RolID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer rolID;
	
	@Column(name="RolName")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String rolName;
	
	@OneToMany(mappedBy = "rol")
    private List<UserAdmin> user;
	
	Rol(){
		
	}

	public Integer getRolID() {
		return rolID;
	}

	public void setRolID(Integer rolID) {
		this.rolID = rolID;
	}

	public String getRolName() {
		return rolName;
	}

	public void setRolName(String rolName) {
		this.rolName = rolName;
	}

	public List<UserAdmin> getUser() {
		return user;
	}

	public void setUser(List<UserAdmin> user) {
		this.user = user;
	}
	
	
}
