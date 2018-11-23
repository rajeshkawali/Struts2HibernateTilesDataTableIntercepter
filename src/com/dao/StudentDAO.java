package com.dao;

import java.util.List;

import com.model.Student;

public interface StudentDAO {

	public void addStudent(Student student);
	public List<Student> getStudents();
	public Student delete(int id);
	/*public Student select(int id);
	public Student update(int id);*/
}
