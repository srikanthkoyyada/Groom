package com.groom.actions;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.groom.bean.TestsTopicList;
import com.groom.bean.User;
import com.groom.service.QuizService;
import com.groom.service.impl.QuizServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@InterceptorRefs({ @InterceptorRef(value = "loginstack") })
@ParentPackage(value = "default")
@Action(value = "start-test-category", results = { @Result(name = "success", location = "/jsp/tests/start-engg-test.jsp") })
public class StartTestCategoryAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	QuizService quizService = new QuizServiceImpl();
	HttpSession session = ServletActionContext.getRequest().getSession(false);
	private String category;
	private int testCategory;
	private int division;
	private List<TestsTopicList> topicList;

	public List<TestsTopicList> getTopicList() {
		return topicList;
	}

	public void setTopicList(List<TestsTopicList> topicList) {
		this.topicList = topicList;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String execute() throws Exception {
		User user = (User) session.getAttribute("user");
		setTopicList(quizService.getTestTopicsByCategory(user.getUserId(), getCategory(), getDivision(), 
				getTestCategory()));

		return SUCCESS;
	}

	public int getDivision() {
		return division;
	}

	public void setDivision(int division) {
		this.division = division;
	}

	public int getTestCategory() {
		return testCategory;
	}

	public void setTestCategory(int testCategory) {
		this.testCategory = testCategory;
	}

}
