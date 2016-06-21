package br.com.apisys.scholar.model.dao;

import br.com.apisys.scholar.model.dao.generic.GenericDao;
import br.com.apisys.scholar.model.entity.Student;

public interface StudentDao extends GenericDao<Student>{
	
	public void removeById(Long id);
	
}