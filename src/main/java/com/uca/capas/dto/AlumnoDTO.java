package com.uca.capas.dto;

public class AlumnoDTO {

	String materia;
	
	String nota;
	
	Integer anio;
	
	Integer ciclo;
	
	Boolean resultado;

	
	
	
	public String getMateria() {
		return materia;
	}

	public void setMateria(String materia) {
		this.materia = materia;
	}

	public String getNota() {
		return nota;
	}

	public void setNota(String nota) {
		this.nota = nota;
	}

	public Integer getAnio() {
		return anio;
	}

	public void setAnio(Integer anio) {
		this.anio = anio;
	}

	public Integer getCiclo() {
		return ciclo;
	}

	public void setCiclo(Integer ciclo) {
		this.ciclo = ciclo;
	}

	public Boolean getResultado() {
		return resultado;
	}

	public void setResultado(Boolean resultado) {
		this.resultado = resultado;
	}
	

	public String getResultadoDelegate() {
        if(this.resultado == null)return "";
        else {
            return resultado == true ?"Aprovado":"Reprobado";
        }
    }
	
	
}
