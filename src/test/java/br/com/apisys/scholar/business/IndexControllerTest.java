package br.com.apisys.scholar.business;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import br.com.apisys.scholar.model.dao.StudentDao;
import br.com.apisys.scholar.model.entity.Student;
import br.com.caelum.vraptor.util.test.MockResult;
import junit.framework.Assert;

public class IndexControllerTest {
	
	private MockResult result;
    private IndexController controller;
    
    @Mock
    private StudentDao studentDao;
    
    @Before
    public void setUp() {
    	MockitoAnnotations.initMocks(this);
    	
        result = new MockResult();
        controller = new IndexController(result, studentDao);
    }
    
    @Test
    public void whenEditStudentThenReturnNullTest(){
    	controller.editStudent(1L);
    	
    	Assert.assertNull(result.included().get("student"));
    }
    
    @Test
    public void returnStudentsEmptyListTest(){
    	controller.listStudents();
    	
    	Assert.assertNotNull(result.included().get("students"));
    	
    	@SuppressWarnings("unchecked")
		List<Student> students = (List<Student>) result.included().get("students");
    	
    	Assert.assertTrue(students.isEmpty());
    }
    
    @Test
    public void hasContainSuccessMessageTest(){
    	Student student = new Student();
        student.setId(1L);
        student.setName("Altair Aquino");
        student.setEmail("altairaquino@gmail.com");
        
        controller.save(student);
        
        Assert.assertTrue(result.included().containsKey("success"));
        Assert.assertEquals("Success!", result.included("success"));
    }

}
