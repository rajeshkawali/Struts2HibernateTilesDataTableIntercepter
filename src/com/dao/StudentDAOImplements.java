package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import com.model.Student;
import com.util.HibernateUtil;

public class StudentDAOImplements implements StudentDAO {

	public void addStudent(Student student) {
		System.out.println("Inside the StudentDAOImplements addStudent ===>" + student.getCollage());
		System.out.println("Inside the StudentDAOImplements addStudent ===>" + student.getName());

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(student);

		System.out.println("Inside the StudentDAOImplements addStudent method After Save...");
		session.getTransaction().commit();
		// return contact;
	}

	@SuppressWarnings({ "unchecked" })
	public List<Student> getStudents() {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		System.out.println("Inside the StudentDAOImplements listStudents method...1");
		List<Student> students = new ArrayList<Student>();
		try {
			students = session.createQuery("from Student").list();
			System.out.println("Inside the StudentDAOImplements listStudents ==>" + students.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.getTransaction().commit();
		return students;
	}

	public Student delete(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Student student = (Student) session.load(Student.class, id);
		System.out.println("Inside the StudentDAOImplements delete Students ==>" + student.toString());
		if (null != student) {
			session.delete(student);
		}
		session.getTransaction().commit();
		return student;
	}
	/*
	public Student select(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Student student = (Student) session.load(Student.class, id);
		
		if (null != student) {

			student = session.createQuery("from Student where id="+id);
		}
		session.getTransaction().commit();
		System.out.println("Inside the StudentDAOImplements update Students ==>" + student.toString());
		return student;
	}
*/
	public Student update(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Student student = (Student) session.load(Student.class, id);
		System.out.println("Inside the StudentDAOImplements update Students ==>" + student.toString());
		if (null != student) {

			session.update(student);
		}
		session.getTransaction().commit();
		return student;
	}
}
