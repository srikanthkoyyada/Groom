package com.groom.actions;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.groom.service.UserService;
import com.groom.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
public class CheckMailAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	HttpServletRequest request = ServletActionContext.getRequest();
	UserService userService = new UserServiceImpl();
	private String isMailAvailable;

	public String getIsMailAvailable() {
		return isMailAvailable;
	}

	public void setIsMailAvailable(String isMailAvailable) {
		this.isMailAvailable = isMailAvailable;
	}



	@Action(value = "checkMail", results = { @Result(name = "success", type = "json") })
	public String checkMail() throws Exception {
		String mail = request.getParameter("mail");
		setIsMailAvailable(userService.isMailAvailable(mail));
		return SUCCESS;
	}

}
