package com.groom.actions;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.groom.bean.User;
import com.groom.service.UserService;
import com.groom.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

@ResultPath(value = "/jsp/prodigy")
@Results({ @Result(name = "success", location = "prodigies-form.jsp"),
		@Result(name = "input", location = "login.jsp"),
		@Result(name = "error", location = "login.jsp")})
public class ProdigyLoginValidateAction extends ActionSupport implements ModelDriven<User>,SessionAware {

	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private SessionMap<String,Object> userSession;
	User user = new User();
	User userObject=new User();
	UserService userService=new UserServiceImpl();

	@Action(value = "prodigylogin-validate")
	public String execute() throws SQLException {
		if(userService.validateUser(user)){
			
			userObject=userService.getUserDetails(user.getUsername());
			
			userSession.put("user", userObject);
			return SUCCESS;
		}
		else{
			addActionError("Invalid Credentials");
		return ERROR;
		}

	}

	@RequiredStringValidator(message = "Please enter your username.")
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@RequiredStringValidator(message = "Please enter your password.")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User getModel() {
		return user;
	}

		@Override
		public void setSession(Map<String, Object> map) {
			userSession=(SessionMap<String, Object>)map;
		}

}