package com.groom.actions;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.groom.bean.User;
import com.groom.service.UserService;
import com.groom.service.impl.UserServiceImpl;
import com.groom.util.GroomUtil;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

@ParentPackage("json-default")
public class ForgotPwdAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String forgotpwdinput;
	private String forgotpwdStstus;

	UserService userService = new UserServiceImpl();

	@Action(value = "forgot-pwd", results = {
			@Result(name = "success", type = "json"),
			@Result(name = "input", location = "/jsp/forgotpassword.jsp") })
	public String execute() throws Exception {

		User user = userService.getUserForgotPwdDetails(getForgotpwdinput());
		if (user.getMail() != null) {
			String mailBody = GroomUtil.buidForgotPwdMail(user.getPassword());
			boolean isMailSent=GroomUtil.sendMail("bojja@groom4more.com", user.getMail(),
					"Password for Groom4More Account", mailBody,
					"Groom4More Password");
			if(isMailSent)
				setForgotpwdStstus("Password sent to your mail");	
		}else
			setForgotpwdStstus("Invalid or Email/Username not registered with us");
		return SUCCESS;

	}

	@RequiredStringValidator(message = "Please enter your username/mail.")
	public String getForgotpwdinput() {
		return forgotpwdinput;
	}

	public void setForgotpwdinput(String forgotpwdinput) {
		this.forgotpwdinput = forgotpwdinput;
	}

	public String getForgotpwdStstus() {
		return forgotpwdStstus;
	}

	public void setForgotpwdStstus(String forgotpwdStstus) {
		this.forgotpwdStstus = forgotpwdStstus;
	}

}