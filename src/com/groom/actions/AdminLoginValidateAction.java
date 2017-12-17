package com.groom.actions;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ResultPath;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.groom.service.AdminService;
import com.groom.service.impl.AdminServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

@ResultPath("/admin")
@Results({ @org.apache.struts2.convention.annotation.Result(name = "success", location = "admin-landing.jsp"),
		@org.apache.struts2.convention.annotation.Result(name = "input", location = "admin-login.jsp"),
		@org.apache.struts2.convention.annotation.Result(name = "error", location = "admin-login.jsp") })
public class AdminLoginValidateAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private SessionMap<String, Object> adminSession;
	private HashMap<Integer, String> category;
	AdminService adminService = new AdminServiceImpl();

	@Action("admin-login-validate")
	public String execute() throws SQLException {
		if (this.adminSession.get("admin") != null) {
			setCategory(this.adminService.getTestCategories());

			return "success";
		}
		if (this.adminService.validateAdmin(getUsername(), getPassword())) {
			setCategory(this.adminService.getTestCategories());
			this.adminSession.put("admin", getUsername());
			return "success";
		}
		addActionError("Invalid Credentials");
		return "error";
	}

	public HashMap<Integer, String> getCategory() {
		return this.category;
	}

	public void setCategory(HashMap<Integer, String> category) {
		this.category = category;
	}

	@RequiredStringValidator(message = "Please enter your username.")
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@RequiredStringValidator(message = "Please enter your password.")
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setSession(Map<String, Object> map) {
		this.adminSession = ((SessionMap) map);
	}
}
