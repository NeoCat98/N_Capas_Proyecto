package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotEmpty;

public class Login {
	@Id
	@Column(name="LoginID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer loginID;
	
	@OneToOne
    @JoinColumn(name = "UserID", referencedColumnName = "UserID")
    private User user;
	
	@Column(name="PasswordEncripted")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String passwordEncripted;
}
