package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(schema="public",name="MateriaXAlumno")
public class MateriaXAlumno {
	 @EmbeddedId
	 MateriaXAlumnoKey id;
	 
	 @ManyToOne
	 @MapsId("AlumnoID")
	 @JoinColumn(name = "AlumnoID")
	 Alumno alumno;
	 
	 @ManyToOne
	 @MapsId("MateriaID")
	 @JoinColumn(name = "MateriaID")
	 Materia materia;
	 
	 @Column(name="Anno")
	 @NotEmpty(message="Este campo no puede estar vacio")
	 private String anno;
	 
	 @Column(name="Ciclo")
	 @NotEmpty(message="Este campo no puede estar vacio")
	 private String ciclo;
	 
	 @Column(name="Nota")
	 @NotEmpty(message="Este campo no puede estar vacio")
	 private float nota;
	 
	 @Column(name="Resultado")
	 @NotEmpty(message="Este campo no puede estar vacio")
	 private float resultado;
	 
	 MateriaXAlumno(){
		 
	 }

	public MateriaXAlumnoKey getId() {
		return id;
	}

	public void setId(MateriaXAlumnoKey id) {
		this.id = id;
	}

	public Alumno getAlumno() {
		return alumno;
	}

	public void setAlumno(Alumno alumno) {
		this.alumno = alumno;
	}

	public Materia getMateria() {
		return materia;
	}

	public void setMateria(Materia materia) {
		this.materia = materia;
	}

	public String getAnno() {
		return anno;
	}

	public void setAnno(String anno) {
		this.anno = anno;
	}

	public String getCiclo() {
		return ciclo;
	}

	public void setCiclo(String ciclo) {
		this.ciclo = ciclo;
	}

	public float getNota() {
		return nota;
	}

	public void setNota(float nota) {
		this.nota = nota;
	}

	public float getResultado() {
		return resultado;
	}

	public void setResultado(float resultado) {
		this.resultado = resultado;
	}
	 
}
