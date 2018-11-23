package com.controller;

import com.model.StudentLogin;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class StudentLoginAction extends ActionSupport implements ModelDriven<StudentLogin> {

	private static final long serialVersionUID = 1L;
	StudentLogin loginstudent=new StudentLogin();
	
	@Override
	public StudentLogin getModel() {
		
		return loginstudent;
	}
	
	public void validate() {
		
		if (!"raj".equals(loginstudent.getUsername())) {
			addFieldError("username", "Invalid User");
		} else if (loginstudent.getUsername().length() == 0) {
			addFieldError("username", "User Name is required");
		}else if (loginstudent.getPassword().length() == 0) {
			addFieldError("password", "Password is required");
		}if (loginstudent.getPassword() == "") {
			addFieldError("password", getText("errors.required"));
			
		}
	}

	public String execute() {

		System.out.println("In LoginStudentAction class execute method...!!");
		/*
		if (loginstudent.getUsername().equals("raj") && loginstudent.getPassword().equals("raj")) {
			return SUCCESS;
		} else {
			addActionError(getText("error.login"));
			return INPUT;
		}
		*/
		return SUCCESS;
	}
}
