package br.com.apisys.scholar.business;

import java.util.List;

import br.com.apisys.scholar.model.dao.StudentDao;
import br.com.apisys.scholar.model.entity.Student;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class IndexController {
	
	private StudentDao studentDao;
	
	private final Result result;
	
	public IndexController(Result result, StudentDao studentDao) {
		this.result = result;
		this.studentDao = studentDao;
	}

	@Get("/")
	public void index() {
		result.forwardTo(this).listStudents();
	}	
	
	@Get("/listStudents")
	public void listStudents(){
		
		List<Student> students = studentDao.loadAll();
		
		result.include("students", students);
		
	}
	
	@Get("/newStudent")
	public void newStudent(){
		
	}
	
	@Get("/edit/{id}")
	public void editStudent(Long id){
		
		Student student = studentDao.find(id);
		if (student == null){
			result.forwardTo(this).listStudents();
		}else{
			result.include("student", student);
		}
		
	}
	
	@Post("/save")
	public void save(Student student){
		
		studentDao.create(student);
		
		result.include("success", "Success!");
		
		result.forwardTo(this).listStudents();
		
	}
	
	@Post("/update")
	public void update(Student student){
		studentDao.update(student);
		
		result.forwardTo(this).listStudents();
	}
	
	@Post("/remove")
	public void remove(Long id){
		if (id != null){
			studentDao.removeById(id);
		}
		result.forwardTo(this).listStudents();
	}	

}