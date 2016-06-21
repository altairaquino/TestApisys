package br.com.apisys.scholar.model.dao.impl;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import br.com.apisys.scholar.model.dao.StudentDao;
import br.com.apisys.scholar.model.dao.generic.GenericDaoImpl;
import br.com.apisys.scholar.model.entity.Student;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class StudentDaoImpl extends GenericDaoImpl<Student> implements StudentDao {

	public StudentDaoImpl(SessionFactory sessionFactory) {
		super(sessionFactory);
	}

	@Override
	public void removeById(Long id) {
		try {
			if (id != null){
				Query query = createQuery("delete from Student s where s.id = :idStudent");
				query.setParameter("idStudent", id);
				query.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}	

}	