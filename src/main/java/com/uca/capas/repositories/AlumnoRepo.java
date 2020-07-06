package com.uca.capas.repositories;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.uca.capas.domain.Alumno;
import com.uca.capas.domain.CentroEscolar;
import com.uca.capas.dto.AlumnoDTO;

public interface AlumnoRepo extends JpaRepository<Alumno, Integer> {

	
	
	@Query(nativeQuery=true, value="select n.id,m.materianame, n.anno,n.ciclo,n.nota,n.resultado from materia m, alumno a, materiaxalumno n where  m.materiaid= n.materiaid and n.alumnoid = a.alumnoid and a.alumnoid= ?1")
	public List<Object[]> obtenerMateriasCursadas(int id) throws DataAccessException;
	
	@Query(nativeQuery=true,value="select a.alumnoid,a.firstname,a.lastname,coalesce(sub.aprobadas,0) as aprobadas ,coalesce(sub.reprobadas,0) as reprobadas,coalesce(sub.Promedio,0) as promedio " + 
			"from alumno a " + 
			"FULL OUTER JOIN (" + 
			"	select a.alumnoid,a.firstname, a.lastname,ap.aprobadas,r.reprobadas,sum(n.nota)/(ap.aprobadas+r.reprobadas) as Promedio " + 
			"	from materia m, alumno a, materiaxalumno n,  " + 
			"		(select count(case when n.resultado = true then 1 end) as aprobadas, a.alumnoid " + 
			"			from materia m, alumno a, materiaxalumno n " + 
			"			where  m.materiaid= n.materiaid and n.alumnoid = a.alumnoid and lower(a.lastname) like ?2% and lower(a.firstname) like ?1%  " + 
			"			group by a.alumnoid ) ap,  " + 
			"		(select count(case when n.resultado = false then 1 end) as reprobadas, a.alumnoid " + 
			"			from materia m, alumno a, materiaxalumno n " + 
			"			where  m.materiaid= n.materiaid and n.alumnoid = a.alumnoid and lower(a.lastname) like ?2% and lower(a.firstname) like ?1% " + 
			"			group by a.alumnoid) r " + 
			"			where  m.materiaid= n.materiaid and n.alumnoid = a.alumnoid  and a.alumnoid = ap.alumnoid  " + 
			"			and a.alumnoid = r.alumnoid " + 
			"	group by a.alumnoid,a.firstname, a.lastname,ap.aprobadas,r.reprobadas) as sub " + 
			"ON a.alumnoid=sub.alumnoid " + 
			"where lower(a.lastname) like ?2% and lower(a.firstname) like ?1% " + 
			"ORDER BY a.alumnoid")
	public List<Object[]> obtenerExpedienteNombre(String nombre, String apellido) throws DataAccessException;
}
