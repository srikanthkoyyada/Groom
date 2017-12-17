package com.groom.actions;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.groom.bean.User;
import com.groom.bean.UserActivation;
import com.groom.service.UserService;
import com.groom.service.impl.UserServiceImpl;
import com.groom.util.GroomUtil;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RegexFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;

@SuppressWarnings("serial")
@Results({ @Result(name = "input", location = "/jsp/registration.jsp"),
		@Result(name = "success", location = "/jsp/welcome.jsp"),
		@Result(name = "error", location = "/jsp/registration.jsp") })
public class RegisterAction extends ActionSupport implements ModelDriven<User> {

	private String username;
	private String password;
	private String cpassword;
	private String firstname;
	private String lastname;
	private String mail;
	private String mobile;
	private String country;
	private String state;
	private String city;
	private String standard;
	private String school;
	private String refText;

	User user = new User();
	UserService userService = new UserServiceImpl();

	/*public void validate() {
		if (!user.getPassword().equals(user.getCpassword()))
			addActionError("Password Mismatch");
	}*/

	@Action(value = "user-registeration")
	public String execute() throws Exception {
		int userid=userService.registerUser(user);
		if (userid!=0) {
			UserActivation userActivation=new UserActivation();
			userActivation.setActivationKey(GroomUtil.getActivationCode());
			userActivation.setUserId(userid);
			if(userService.saveUserActivationRecord(userActivation)){
			String from = "bojja@groom4more.com";
			
			String bodyText = GroomUtil.buidRegistrationMail(user,userActivation.getActivationKey());
			String mailTitle = "Registration at Dharshanth Technologies";
			GroomUtil.sendMail(from, user.getMail(), "Welome ",
					bodyText, mailTitle);
			return SUCCESS;
			}
		} else {
			addActionError("There is a problem with user registration.Please try again later");
			return ERROR;
		}
		return null;
	}

	@RequiredStringValidator(message = "Username required")
	@RegexFieldValidator(message = "should start with alphabet and only dot,underscore,dash are allowed", regex = "^[a-zA-Z][a-zA-Z0-9._-]+$")
	@StringLengthFieldValidator(trim = true, minLength = "8", maxLength = "15", message = "length shoulb be between 8 and 15")
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@StringLengthFieldValidator(maxLength = "15", minLength = "8", message = "length shoulb be between 8 and 15", trim = false)
	@RequiredStringValidator(message = "Enter Password")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	//@RequiredStringValidator(message = "Enter Confirm Password")
	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}

	@RequiredStringValidator(message = "First Name required")
	@StringLengthFieldValidator(trim = true, minLength = "3", maxLength = "30", message = "length shoulb be between 3 and 30")
	@RegexFieldValidator(message = "only alphabets allowed", regex = "^[a-zA-Z]+$")
	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	//@RequiredStringValidator(message = "Last Name required")
	@StringLengthFieldValidator(trim = true, minLength = "1", maxLength = "15", message = "length shoulb be between 1 and 15")
	@RegexFieldValidator(message = "only alphabets allowed", regex = "^[a-zA-Z]+$")
	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	@RequiredStringValidator(message = "Email required")
	@EmailValidator(message = "invalid email")
	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	@StringLengthFieldValidator(maxLength = "10", minLength = "10", message = "length shoulb be 10 only", trim = false)
	@RequiredStringValidator(message = "Enter Moblie Number")
	@RegexFieldValidator(message = "only numbers allowed", regex = "^[0-9]+$")
	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	@RequiredStringValidator(message = "Select Country")
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@RequiredStringValidator(message = "Select State")
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@StringLengthFieldValidator(minLength = "3", message = "enter atleast 3 letters", trim = false)
	@RequiredStringValidator(message = "Enter City")
	@RegexFieldValidator(message = "only alphabets allowed", regex = "^[a-zA-Z]+$")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@RequiredStringValidator(message = "Class studying required")
	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	//@RequiredStringValidator(message = "Enter your school name")
	@StringLengthFieldValidator(minLength = "4", maxLength = "30", message = "school name length should be in between 4-30", trim = false)
	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

	public String getRefText() {
		return refText;
	}

	public void setRefText(String refText) {
		this.refText = refText;
	}

}
