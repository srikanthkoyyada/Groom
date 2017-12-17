package com.groom.actions;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.opensymphony.xwork2.ActionSupport;

@Results({ @Result(name = "success", location = "/jsp/admin-login.jsp") })
public class AdminLogoutAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Action(value = "admin-logout")
	public String execute() throws SQLException {

		HttpSession session = ServletActionContext.getRequest().getSession(
				false);
		if(session!=null && session.getAttribute("admin")!=null)
		session.invalidate();

		return SUCCESS;

	}

}