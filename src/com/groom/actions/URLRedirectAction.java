package com.groom.actions;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

public class URLRedirectAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Action(value = "login", results = { @Result(location = "/jsp/login.jsp") })
	public String login() throws Exception {
		return SUCCESS;
	}

	@Action(value = "register", results = { @Result(location = "/jsp/registration.jsp") })
	public String register() throws Exception {
		return SUCCESS;
	}

	@Action(value = "fgtpwd", results = { @Result(location = "/jsp/forgotpassword.jsp") })
	public String forgotPwd() throws Exception {
		return SUCCESS;
	}

	@Action(value = "activate", results = { @Result(location = "/jsp/activation.jsp") })
	public String activateUser() throws Exception {
		return SUCCESS;
	}

	@Action(value = "invalid-activation", results = { @Result(location = "/jsp/invalid-activation.jsp") })
	public String invalidUserActivation() throws Exception {
		return SUCCESS;
	}

	@Action(value = "admin", results = { @Result(name = "success", location = "/jsp/admin-login.jsp"),
			@Result(name = "error", location = "/jsp/admin.jsp") })
	public String adminPage() throws Exception {
		if (ServletActionContext.getRequest().getSession().getAttribute("admin") != null) {
			return ERROR;
		} else
			return SUCCESS;
	}

	@Action(value = "submit-prodigy", results = { @Result(name = "success", location = "/jsp/prodigy/login.jsp"),
			@Result(name = "error", location = "/jsp/prodigy/prodigies-form.jsp") })
	public String submitUserProdigy() throws Exception {
		if (ServletActionContext.getRequest().getSession().getAttribute("user") != null) {
			return ERROR;
		} else
			return SUCCESS;
	}

	@Action(value = "add-test", results = {
			@org.apache.struts2.convention.annotation.Result(name = "success", location = "/admin/add-test.jsp"),
			@org.apache.struts2.convention.annotation.Result(name = "error", location = "/admin/admin-login.jsp") })
	public String addTest() throws Exception {
		if (ServletActionContext.getRequest().getSession().getAttribute("admin") != null) {
			return "success";
		}
		return "error";
	}

	@Action(value = "admin-landing", results = {
			@org.apache.struts2.convention.annotation.Result(name = "success", location = "/admin/admin-landing.jsp"),
			@org.apache.struts2.convention.annotation.Result(name = "error", location = "/admin/admin-login.jsp") })
	public String addLanding() throws Exception {
		if (ServletActionContext.getRequest().getSession().getAttribute("admin") != null) {
			return "success";
		}
		return "error";
	}

	@Action(value = "select-edit-test", results = {
			@org.apache.struts2.convention.annotation.Result(name = "success", location = "/admin/select-edit-test.jsp"),
			@org.apache.struts2.convention.annotation.Result(name = "error", location = "/admin/admin-login.jsp") })
	public String EditTest() throws Exception {
		if (ServletActionContext.getRequest().getSession().getAttribute("admin") != null) {
			return "success";
		}
		return "error";
	}

}
