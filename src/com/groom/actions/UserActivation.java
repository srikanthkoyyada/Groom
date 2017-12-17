package com.groom.actions;

import java.sql.SQLException;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;
import org.apache.struts2.convention.annotation.Results;

import com.groom.service.UserService;
import com.groom.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@ResultPath(value = "/jsp")
@Results({ @Result(name = "success", location = "activation.jsp"),

@Result(name = "error", location = "invalid-activation.jsp") })
public class UserActivation extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String acode;

	public String getAcode() {
		return acode;
	}

	public void setAcode(String acode) {
		this.acode = acode;
	}

	UserService userService = new UserServiceImpl();

	@Action(value = "user-activation")
	public String execute() throws SQLException {

		if (userService.activateUser(getAcode())) {
			return SUCCESS;
		} else {

			return ERROR;
		}

	}

}