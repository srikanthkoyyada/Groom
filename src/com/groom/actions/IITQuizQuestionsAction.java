package com.groom.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.groom.bean.QuizQuestionDetails;
import com.groom.service.QuizService;
import com.groom.service.impl.QuizServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@InterceptorRefs({ @InterceptorRef(value = "loginstack"),
		@InterceptorRef(value = "token") })
@ParentPackage(value = "default")
@Action(value = "enggquiz", results = {
		@Result(name = "success", location = "/jsp/tests/enggquiz.jsp"),
		@Result(name = "invalid.token", location = "/index.jsp") })
		
public class IITQuizQuestionsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private List<QuizQuestionDetails> questionsList;
	QuizService quizService = new QuizServiceImpl();
	HttpServletRequest request = ServletActionContext.getRequest();
	private String category;
	private int division;
	private String topicid;
	private String testDate;
	private int quizSize;
	private int testTime;
	private int data;
	

	public int getData() {
		return data;
	}

	public void setData(int data) {
		this.data = data;
	}

	public String execute() throws Exception {
		
		setQuestionsList(quizService.getQuizDetails(getCategory(),Integer.parseInt(getTopicid())));
		setDivision(quizService.getQuizDivision(getCategory(),Integer.parseInt(getTopicid())));
		setQuizSize(getQuestionsList().size());
		setTopicid(getTopicid());
		setTestTime(getQuestionsList().get(0).getTest_time());
		setData(345);
		return SUCCESS;
	}

	public List<QuizQuestionDetails> getQuestionsList() {
		return questionsList;
	}

	public void setQuestionsList(List<QuizQuestionDetails> questionsList) {
		this.questionsList = questionsList;
	}
	
	public int getDivision() {
		return division;
	}

	public void setDivision(int division) {
		this.division = division;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTopicid() {
		return topicid;
	}

	public void setTopicid(String topicid) {
		this.topicid = topicid;
	}

	public String getTestDate() {
		return testDate;
	}

	public void setTestDate(String testDate) {
		this.testDate = testDate;
	}

	public int getQuizSize() {
		return quizSize;
	}

	public void setQuizSize(int quizSize) {
		this.quizSize = quizSize;
	}

	public int getTestTime() {
		return testTime;
	}

	public void setTestTime(int testTime) {
		this.testTime = testTime;
	}	

}
