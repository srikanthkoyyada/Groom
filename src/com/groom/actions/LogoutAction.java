package com.groom.actions;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.opensymphony.xwork2.ActionSupport;

@Results({ @Result(name = "success", location = "/index.jsp") })
public class LogoutAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Action(value = "logout")
	public String execute() throws SQLException {

		HttpSession session = ServletActionContext.getRequest().getSession(
				false);
		if(session!=null && session.getAttribute("user")!=null)
		session.invalidate();

		return SUCCESS;

	}

}