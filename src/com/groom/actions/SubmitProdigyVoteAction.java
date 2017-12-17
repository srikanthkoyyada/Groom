package com.groom.actions;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import sun.misc.Request;

import com.groom.bean.User;
import com.groom.service.UserService;
import com.groom.service.impl.UserServiceImpl;
import com.groom.service.MiscService;
import com.groom.service.impl.MiscServiceImpl;
import com.groom.util.GroomUtil;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RegexFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;

@SuppressWarnings("serial")
@Results({ @Result(name = "input", location = "/jsp/prodigy/entry.jsp"),
		@Result(name = "success", location = "/jsp/prodigy/entry.jsp"),
		@Result(name = "error", location = "/jsp/prodigy/entry.jsp") })
public class SubmitProdigyVoteAction extends ActionSupport implements ModelDriven<User> {
	
	HttpSession session = ServletActionContext.getRequest().getSession(false);
	
	private Integer id;

	//User user = new User();

	@Action(value = "submit-vote")
	public String execute1() throws Exception {		
			
		MiscService miscService = new MiscServiceImpl();
		//String votinguser=user.getUsername();
		if(session.getAttribute("user")!=null){
			User user = (User) session.getAttribute("user");
			String username = user.getUsername();
			if(miscService.voteProdigyEntry(username, id)) {
				return SUCCESS;
			} else {
				addActionError("You have already voted for today, Try again tomorrow");
				//return ERROR;
			}
		} else {
			addActionError("You must login to vote");
			return ERROR;
		}
		return SUCCESS;
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
