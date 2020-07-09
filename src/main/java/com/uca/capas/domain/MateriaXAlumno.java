package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.PositiveOrZero;
import javax.validation.constraints.NotNull;

@Entity
@Table(schema="public",name="MateriaXAlumno")
public class MateriaXAlumno {
	
	
	
	 @Id
	 @Column(name="id")
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Integer id;
	

	 
	 @ManyToOne(fetch = FetchType.LAZY)
	 @JoinColumn(name = "AlumnoID")
	 Alumno alumno;
	 
	@Transient
	private Integer alumnoFK;
	 
	
	 @ManyToOne(fetch = FetchType.LAZY)
	 //@MapsId("MateriaID")
	 @JoinColumn(name = "MateriaID")
	 Materia materia;
	 
	@Transient
	private Integer materiaFK;
	
	 
	 @Column(name="Anno")
	 @NotNull(message="Este campo no puede estar vacio")
	 private Integer anno;
	 
	 @Column(name="Ciclo")
	 @NotNull(message="Este campo no puede estar vacio")
	 private Integer ciclo;
	 
	 @Column(name="Nota")
	 @PositiveOrZero(message="Este campo debe ser 0 o mayor")
	 @NotNull(message="Este campo no puede estar vacio")
	 private float nota;
	 
	 @Column(name="Resultado")
	 @NotNull(message="Este campo no puede estar vacio")
	 private Boolean resultado;
	 
	 public MateriaXAlumno(){
		 
	 }

	/* public MateriaXAlumnoKey getIdraro() {
		 return idraro;
	 }

	 public void setIdraro(MateriaXAlumnoKey idraro) {
		 this.idraro = idraro;
	 }*/
	 
	 public Integer getId() {
		 return id;
	 }

	

	public Integer getAlumnoFK() {
		return alumnoFK;
	}

	public void setAlumnoFK(Integer alumnoFK) {
		this.alumnoFK = alumnoFK;
	}

	public Integer getMateriaFK() {
		return materiaFK;
	}

	public void setMateriaFK(Integer materiaFK) {
		this.materiaFK = materiaFK;
	}

	public void setId(Integer id) {
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

	public Integer getAnno() {
		return anno;
	}

	public void setAnno(Integer anno) {
		this.anno = anno;
	}

	public Integer getCiclo() {
		return ciclo;
	}

	public void setCiclo(Integer ciclo) {
		this.ciclo = ciclo;
	}

	public float getNota() {
		return nota;
	}

	public void setNota(float nota) {
		this.nota = nota;
	}

	public Boolean getResultado() {
		return resultado;
	}

	public void setResultado(Boolean resultado) {
		this.resultado = resultado;
	}
	 
}
