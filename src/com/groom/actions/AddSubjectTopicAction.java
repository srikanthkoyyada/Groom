package com.groom.actions;

import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.groom.service.AdminService;
import com.groom.service.impl.AdminServiceImpl;
import com.groom.util.GroomUtil;
import com.opensymphony.xwork2.ActionSupport;

public class AddSubjectTopicAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	HttpServletRequest request = ServletActionContext.getRequest();
	AdminService adminService = new AdminServiceImpl();
	private String isTopicAdded;

	public String getIsTopicAdded() {
		return isTopicAdded;
	}

	public void setIsTopicAdded(String isTopicAdded) {
		this.isTopicAdded = isTopicAdded;
	}

	@Action(value = "add-subject-topic", results = { @Result(name = "success", location = "/jsp/admin-success.jsp") })
	public String addSubject() {
		String subject = request.getParameter("subject");
		String topicname = request.getParameter("topic");
		int standard = Integer.parseInt(request.getParameter("standard"));
		int test_category_id = Integer.parseInt(request.getParameter("category"));
		String test_by= request.getParameter("test_by").toString();
		int test_time=Integer.parseInt(request.getParameter("test_time").toString());
		Date testDate = null;
		try {
			testDate = GroomUtil.convertStringtoSqlDate(request
					.getParameter("testdate"));
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		boolean status = false;
		try {
			status = adminService.addSubjectTopic(subject, topicname, standard,
					testDate,test_category_id,test_by,test_time);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (status)
			setIsTopicAdded("YES");
		else
			setIsTopicAdded("NO");
		return SUCCESS;
	}

}
