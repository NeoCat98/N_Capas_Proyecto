package com.uca.capas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.MateriaXAlumno;
import com.uca.capas.domain.MateriaXAlumnoKey;

@Repository
public class MateriaXAlumnoDAOImpl implements MateriaXAlumnoDAO{

	@PersistenceContext(unitName="capas")
	private EntityManager entityManager;
	
	@Override
	public List<MateriaXAlumno> findAll() throws DataAccessException {
		StringBuffer sb = new StringBuffer();
		sb.append("select * from public.materiaxalumno");
		Query query = entityManager.createNativeQuery(sb.toString(), MateriaXAlumno.class);
		List<MateriaXAlumno> resultset = query.getResultList();
		return resultset;
	}

	@Override
	public MateriaXAlumno findOne(Integer id) throws DataAccessException {
		return entityManager.find(MateriaXAlumno.class, id);
	}
	
	@Transactional
	@Override
	public void insert(MateriaXAlumno mxa) throws DataAccessException {
		entityManager.persist(mxa);
	}

	@Transactional
	@Override
	public void delete(Integer id) throws DataAccessException {
		MateriaXAlumno materiaXAlumno = entityManager.find(MateriaXAlumno.class, id);
		entityManager.remove(materiaXAlumno);
	}

}
