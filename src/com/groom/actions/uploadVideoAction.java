package com.groom.actions;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.groom.bean.User;
import com.groom.bean.UserActivation;
import com.groom.dao.AdminDAO;
import com.groom.dao.impl.AdminDAOImpl;
import com.groom.service.UserService;
import com.groom.service.impl.UserServiceImpl;
import com.groom.util.GroomUtil;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RegexFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;

@SuppressWarnings("serial")
@Results({ @Result(name = "input", location = "/admin/uploadVideo.jsp"),
		@Result(name = "success", location = "/admin/success.jsp"),
		@Result(name = "error", location = "/admin/uploadVideo.jsp") })
public class uploadVideoAction extends ActionSupport {	
	
	private int standard;
	private String subject;
	private String title;
	private String description;	
	private String url;

	User user = new User();
	UserService userService = new UserServiceImpl();

	@Action(value = "uploadVideo")
	public String execute() throws Exception {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
		
		AdminDAO adminDAO = new AdminDAOImpl(); 
		if(adminDAO.saveVideoURL(standard, subject, title, description, url)){
			System.out.println("Action : "+url);
			return SUCCESS;

		} else {
			addActionError("There is a problem with submission. Please try again later");
			return ERROR;
		}
	}
	
	@RequiredFieldValidator(message = "Standard Required")
	//@RegexFieldValidator(message = "should start with alphabet and only dot,underscore,dash are allowed", regex = "^[a-zA-Z][a-zA-Z0-9._-]+$")
	//@StringLengthFieldValidator(trim = true, minLength = "8", maxLength = "15", message = "length shoulb be between 8 and 15")
	public int getStandard() {
		return standard;
	}

	public void setStandard(int standard) {
		this.standard = standard;
	}

	@RequiredStringValidator(message = "Subject Required")
	//@RegexFieldValidator(message = "should start with alphabet and only dot,underscore,dash are allowed", regex = "^[a-zA-Z][a-zA-Z0-9._-]+$")
	//@StringLengthFieldValidator(trim = true, minLength = "8", maxLength = "15", message = "length shoulb be between 8 and 15")
	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	@StringLengthFieldValidator(maxLength = "250", minLength = "20", message = "length shoulb be between 250 and 20", trim = false)
	@RequiredStringValidator(message = " Description Required")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	@StringLengthFieldValidator(maxLength = "100", minLength = "5", message = "length shoulb be between 100 and 5", trim = false)
	@RequiredStringValidator(message = "Video URL Required")
	public String getUrl() {
		return url;
	}
	
	public void setUrl(String url) {
		this.url = url;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
}

