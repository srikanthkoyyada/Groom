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
public class CheckUsernameAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	HttpServletRequest request = ServletActionContext.getRequest();
	UserService userService = new UserServiceImpl();
	private String isUsernameAvailable;

	public String getIsUsernameAvailable() {
		return isUsernameAvailable;
	}

	public void setIsUsernameAvailable(String isUsernameAvailable) {
		this.isUsernameAvailable = isUsernameAvailable;
	}

	@Action(value = "checkUsername", results = { @Result(name = "success", type = "json") })
	public String checkUsername() throws Exception {
		String username = request.getParameter("username");
		setIsUsernameAvailable(userService.isUsernameAvailable(username));
		return SUCCESS;
	}

}
