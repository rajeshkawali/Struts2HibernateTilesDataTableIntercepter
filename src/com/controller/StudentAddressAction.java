package com.controller;

import com.model.StudentAddress;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class StudentAddressAction extends ActionSupport implements ModelDriven<StudentAddress>{
	
	private static final long serialVersionUID = 1L;
	StudentAddress stdadr = new StudentAddress();
	
	@Override
	public StudentAddress getModel() {
		return stdadr;
	}
	
	public String execute() {
		return SUCCESS;
		
	}

	
	
	

}
