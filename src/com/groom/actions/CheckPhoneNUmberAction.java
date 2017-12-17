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
public class CheckPhoneNUmberAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	HttpServletRequest request = ServletActionContext.getRequest();
	UserService userService = new UserServiceImpl();
	private String isPhoneNumberAvailable;

	public String getIsPhoneNumberAvailable() {
		return isPhoneNumberAvailable;
	}

	public void setIsPhoneNumberAvailable(String isPhoneNumberAvailable) {
		this.isPhoneNumberAvailable = isPhoneNumberAvailable;
	}


	@Action(value = "checkPhone", results = { @Result(name = "success", type = "json") })
	public String checkPhone() throws Exception {
		String phone = request.getParameter("phone");
		setIsPhoneNumberAvailable(userService.isPhoneNumberAvailable(phone));
		return SUCCESS;
	}

}
