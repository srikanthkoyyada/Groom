package com.groom.actions;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.groom.bean.Shine;
import com.groom.service.AdminService;
import com.groom.service.impl.AdminServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

@Action(value = "shine-result", results = {
		@Result(name = "success", location = "/jsp/shine-student-results.jsp"),
		@Result(name = "input", location = "/jsp/shine-results.jsp"), })
public class ShineResultsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Shine shine;
	private String school;
	private String standard;
	private String rollnumber;

	@RequiredStringValidator(message = "Please select your school")
	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	@RequiredStringValidator(message = "Select class studying")
	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	@RequiredStringValidator(message = "Enter Your Roll Number here")
	public String getRollnumber() {
		return rollnumber;
	}

	public void setRollnumber(String rollnumber) {
		this.rollnumber = rollnumber;
	}

	public Shine getShine() {
		return shine;
	}

	public void setShine(Shine shine) {
		this.shine = shine;
	}

	AdminService adminService = new AdminServiceImpl();

	public String execute() throws Exception {

		setShine(adminService.getUserResults(Integer.parseInt(getStandard()), getSchool(),
				getRollnumber()));

		return SUCCESS;
	}

}
