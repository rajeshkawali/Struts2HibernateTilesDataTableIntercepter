package com.controller;

import java.util.List;

import com.dao.StudentDAO;
import com.dao.StudentDAOFactory;
import com.model.Student;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class StudentAction extends ActionSupport implements ModelDriven<Student> {

	private static final long serialVersionUID = 1L;
	private Student student = new Student();
	StudentDAO studentdao = StudentDAOFactory.create();
	private List<Student> listStudents;

	public Student getModel() {
		return student;
	}
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public List<Student> getListStudents() {
		return listStudents;
	}

	public void setListStudents(List<Student> listStudents) {
		this.listStudents = listStudents;
	}
	
	public String execute() {

		if (student.getName().equals("") && student.getCollage() == null && student.getName() == null
				&& student.getCollage().equals("")) {
			studentdao.addStudent(student);
			return "success";
		} else {
			addActionError(getText("error.login1"));
			return INPUT;
		}
	}

	public String listStudents() {
		listStudents = studentdao.getStudents();
		return "success";
	}

	public String delete() {
		int id = student.getId();
		System.out.println("In side the delete method id=" + id);
		studentdao.delete(id);
		return SUCCESS;
	}
/*	
	public String update() {
		int id = student.getId();
		System.out.println("In side the update method id=" + id);
		studentdao.update(id);
		return SUCCESS;
	}

	public String select() {
		int id = student.getId();
		System.out.println("In side the select method id=" + id);
		studentdao.select(id);
		return SUCCESS;
	}
	 
	
	public void validate() {
		System.out.println("In side the validate method");
		if (student.getName().equals("")) {
			addFieldError("name", "Name Should not be Empty");
		}
		if (student.getCollage().equals("")) {
			addFieldError("collage", "Collage Should not be Empty");
		}
	}
*/

}
