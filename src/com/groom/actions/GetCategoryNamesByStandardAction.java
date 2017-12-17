package com.groom.actions;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.groom.service.AdminService;
import com.groom.service.impl.AdminServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
public class GetCategoryNamesByStandardAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	HttpServletRequest request = ServletActionContext.getRequest();
	AdminService adminService = new AdminServiceImpl();
	private Map<String, String> categoryMap;

	public Map<String, String> getCategoryMap() {
		return categoryMap;
	}

	public void setCategoryMap(Map<String, String> categoryMap) {
		this.categoryMap = categoryMap;
	}

	@Action(value = "getCategoryByStandard",  results=@Result(type="json", params = {"contentType", "application/json", "root", "categoryMap"}))
	public String checkUsername() throws Exception {		
		int standard = Integer.parseInt(request.getParameter("standard"));
		setCategoryMap(adminService.getCategoryByStandard(standard));
		//setTopicMap(adminService.getTopics(subject));
		return SUCCESS;
	}

}
