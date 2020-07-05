package com.uca.capas.dto;

public class ExpedienteDTO {

		Integer alumnoid;
		
		

		String nombre;
		
		String apellido;
		
		Integer materiasA;
		
		Integer materiasR;
	
		Float promedio;
		
		public void setAlumnoid(Integer alumnoid) {
			this.alumnoid = alumnoid;
		}

		
		public Integer getAlumnoid() {
			return alumnoid;
		}
		public String getNombre() {
			return nombre;
		}

		public void setNombre(String nombre) {
			this.nombre = nombre;
		}

		public String getApellido() {
			return apellido;
		}

		public void setApellido(String apellido) {
			this.apellido = apellido;
		}

		public Integer getMateriasA() {
			return materiasA;
		}

		public void setMateriasA(Integer materiasA) {
			this.materiasA = materiasA;
		}

		public Integer getMateriasR() {
			return materiasR;
		}

		public void setMateriasR(Integer materiasR) {
			this.materiasR = materiasR;
		}

		public Float getPromedio() {
			return promedio;
		}

		public void setPromedio(Float promedio) {
			this.promedio = promedio;
		}

		public ExpedienteDTO() {
			super();
		}
		
		
		
}
