package com.uca.capas.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class MateriaXAlumnoKey implements Serializable{
	@Column(name = "AlumnoID")
    private Long alumnoID;
 
    @Column(name = "MateriaID")
    private Long materiaID;

    MateriaXAlumnoKey(){
    	
    }
    
    //setter y getters
	public Long getAlumnoID() {
		return alumnoID;
	}

	public void setAlumnoID(Long alumnoID) {
		this.alumnoID = alumnoID;
	}

	public Long getMateriaID() {
		return materiaID;
	}

	public void setMateriaID(Long materiaID) {
		this.materiaID = materiaID;
	}
    //HashCode y equals
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((alumnoID == null) ? 0 : alumnoID.hashCode());
		result = prime * result + ((materiaID == null) ? 0 : materiaID.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MateriaXAlumnoKey other = (MateriaXAlumnoKey) obj;
		if (alumnoID == null) {
			if (other.alumnoID != null)
				return false;
		} else if (!alumnoID.equals(other.alumnoID))
			return false;
		if (materiaID == null) {
			if (other.materiaID != null)
				return false;
		} else if (!materiaID.equals(other.materiaID))
			return false;
		return true;
	}
    
    
}
