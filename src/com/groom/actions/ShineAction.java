package com.groom.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.groom.service.AdminService;
import com.groom.service.impl.AdminServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@Action(value = "shine", results = { @Result(name = "success", location = "/jsp/shine-results.jsp") })
public class ShineAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	//private List<String> names;

	/*public List<String> getNames() {
		return names;
	}

	public void setNames(List<String> names) {
		this.names = names;
	}*/

	AdminService adminService = new AdminServiceImpl();

	public String execute() throws Exception {
	
		//setNames(adminService.getShineResultNames());
		
		return SUCCESS;
	}

}
