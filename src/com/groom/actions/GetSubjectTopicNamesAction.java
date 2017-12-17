package com.groom.actions;

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
public class GetSubjectTopicNamesAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	HttpServletRequest request = ServletActionContext.getRequest();
	AdminService adminService = new AdminServiceImpl();
	private Map<Integer, String> topicMap;

	public Map<Integer, String> getTopicMap() {
		return topicMap;
	}

	public void setTopicMap(Map<Integer, String> topicMap) {
		this.topicMap = topicMap;
	}

	@Action(value = "getTopics",  results=@Result(type="json", params = {"contentType", "application/json", "root", "topicMap"}))
	public String checkUsername() throws Exception {
		String subject = request.getParameter("subject");
		setTopicMap(adminService.getTopics(subject));
		return SUCCESS;
	}

}
