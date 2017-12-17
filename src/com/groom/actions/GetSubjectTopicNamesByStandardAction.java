package com.groom.actions;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;

import com.groom.service.AdminService;
import com.groom.service.impl.AdminServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
public class GetSubjectTopicNamesByStandardAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	HttpServletRequest request = ServletActionContext.getRequest();
	AdminService adminService = new AdminServiceImpl();
	private Map<Integer, String> topicMap;

	public Map<Integer, String> getTopicMap() {
		return this.topicMap;
	}

	public void setTopicMap(Map<Integer, String> topicMap) {
		this.topicMap = topicMap;
	}

	@Action(value = "getTopicsByStandard", results = {
			@org.apache.struts2.convention.annotation.Result(type = "json", params = { "contentType",
					"application/json", "root", "topicMap" }) })
	public String checkUsername() throws Exception {
		try {
			System.out.println("getTopicsByStandard");
			String subject = this.request.getParameter("subject");
			int standard = Integer.parseInt(this.request.getParameter("standard"));

			int division = 0;
			System.out.println(standard + "::" + division);
			System.out.println(this.adminService.getTopicsByStandard(subject, standard, division).size());
			setTopicMap(this.adminService.getTopicsByStandard(subject, standard, division));
		} catch (Exception exception) {
			exception.printStackTrace();
		}

		return "success";
	}
}
