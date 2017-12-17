package com.groom.actions;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import sun.misc.Request;

import com.groom.bean.User;
import com.groom.service.UserService;
import com.groom.service.impl.UserServiceImpl;
import com.groom.service.MiscService;
import com.groom.service.impl.MiscServiceImpl;
import com.groom.util.GroomUtil;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RegexFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;

@SuppressWarnings("serial")
@Results({ @Result(name = "input", location = "/jsp/prodigy/prodigies-form.jsp"),
		@Result(name = "success", location = "/jsp/prodigy/prodigies_success.jsp"),
		@Result(name = "error", location = "/jsp/prodigy/prodigies-form.jsp") })
public class ProdigyAction extends ActionSupport implements ModelDriven<User> {
	
	HttpSession session = ServletActionContext.getRequest().getSession(false);
	private String teamname;
	private String schoolname;
	private String teamdetails;
	private String city;
	private String email;
	private String phone;
	private String theme;
	private String title;
	private String youridea;
	private Integer id;

	//User user = new User();
	
	
	@Action(value = "prodigy_submission")
	public String execute() throws Exception {
		
		User user = (User) session.getAttribute("user");
		UserService userService = new UserServiceImpl();
		MiscService miscService = new MiscServiceImpl();
		
		int id=miscService.addprodigy(user.getUsername().toString(), teamname, schoolname, teamdetails, city, email, phone, theme, title, youridea);
		
		if (id!=0) {
			
			String from = "bojja@groom4more.com";			
			String bodyText = GroomUtil.buidProdigiesMail(user.getUsername(), id);
			String mailTitle = "Prodigy Submission at Groom4More";
			GroomUtil.sendMail(from, user.getMail(), "Welome to Prodigies",
					bodyText, mailTitle);
			return SUCCESS;
		} else {
			addActionError("There is a problem with prodigy submmission.Please try again later");
			return ERROR;
		}
		//return null;
	}

	@RequiredStringValidator(message = "Team Name required")
	//@RegexFieldValidator(message = "should start with alphabet and only dot,underscore,dash are allowed", regex = "^[a-zA-Z][a-zA-Z0-9._-]+$")
	@StringLengthFieldValidator(trim = true, minLength = "3", maxLength = "15", message = "length shoulb be between 3 and 15")
	public String getTeamname() {
		return teamname;
	}

	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}

	@StringLengthFieldValidator(maxLength = "25", minLength = "5", message = "length shoulb be between 5 and 25", trim = false)
	@RequiredStringValidator(message = "Enter Your School Name")
	public String getSchoolname() {
		return schoolname;
	}

	public void setSchoolname(String schoolname) {
		this.schoolname = schoolname;
	}

	@RequiredStringValidator(message = "Team Details required")
	@StringLengthFieldValidator(trim = true, minLength = "10", maxLength = "500", message = "length shoulb be between 10 and 500")
	//@RegexFieldValidator(message = "Enter Your Team Details")
	public String getTeamdetails() {
		return teamdetails;
	}

	public void setTeamdetails(String teamdetails) {
		this.teamdetails = teamdetails;
	}
	
	@RequiredStringValidator(message = "City required")
	@RegexFieldValidator(message = "should start with alphabet and only dot,underscore,dash are allowed", regex = "^[a-zA-Z][a-zA-Z0-9._-]+$")
	@StringLengthFieldValidator(trim = true, minLength = "3", maxLength = "15", message = "length shoulb be between 3 and 15")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@RequiredStringValidator(message = "Email required")
	@EmailValidator(message = "invalid email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@StringLengthFieldValidator(maxLength = "10", minLength = "10", message = "length shoulb be 10 only", trim = false)
	@RequiredStringValidator(message = "Enter Moblie Number")
	@RegexFieldValidator(message = "only numbers allowed", regex = "^[0-9]+$")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	//@StringLengthFieldValidator(minLength = "3", message = "enter atleast 3 letters", trim = false)
	@RequiredStringValidator(message = "Select Your Theme")
	//@RegexFieldValidator(message = "only alphabets allowed", regex = "^[a-zA-Z]+$")
	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	@StringLengthFieldValidator(minLength = "3", message = "enter atleast 3 letters", trim = false)
	@RequiredStringValidator(message = "Project Title required")
	//@RegexFieldValidator(message = "only alphabets allowed", regex = "^[a-zA-Z]+$")
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@RequiredStringValidator(message = "Enter Your Idea")
	@StringLengthFieldValidator(minLength = "25", maxLength = "5000", message = "content length should be in between 25-5000", trim = false)
	public String getYouridea() {
		return youridea;
	}

	public void setYouridea(String youridea) {
		this.youridea = youridea;
	}
	

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return null;
	}

	@Action(value = "submit-vote")
	public String execute1() throws Exception {		
			
		MiscService miscService = new MiscServiceImpl();
		//String votinguser=user.getUsername();
		if(session.getAttribute("user")!=null){
			User user = (User) session.getAttribute("user");
			String username = user.getUsername();
			if(miscService.voteProdigyEntry(username, id)) {
				return SUCCESS;
			} else {
				addActionError("You have already voted for today, Try again tomorrow");
				//return ERROR;
			}
		} else {
			addActionError("You must login to vote");
			return ERROR;
		}
		return SUCCESS;
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
}
