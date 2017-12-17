package com.groom.actions;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.groom.bean.QuizQuestionDetails;
import com.groom.service.QuizService;
import com.groom.service.impl.QuizServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@Results({ @org.apache.struts2.convention.annotation.Result(name = "success", location = "/admin/edit-test.jsp"),
		@org.apache.struts2.convention.annotation.Result(name = "input", location = "/admin/edit-test.jsp"),
		@org.apache.struts2.convention.annotation.Result(name = "error", location = "/admin/admin-login.jsp") })
public class EditTestByTopic extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	QuizService quizService = new QuizServiceImpl();
	private String subject;
	private String topic;
	private SessionMap<String, Object> session;
	private List<QuizQuestionDetails> quizQuestionDetailsList;

	public List<QuizQuestionDetails> getQuizQuestionDetailsList() {
		return this.quizQuestionDetailsList;
	}

	public void setQuizQuestionDetailsList(List<QuizQuestionDetails> quizQuestionDetailsList) {
		this.quizQuestionDetailsList = quizQuestionDetailsList;
	}

	public String getSubject() {
		return this.subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getTopic() {
		return this.topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public void setSession(Map<String, Object> map) {
		this.session = ((SessionMap) map);
	}

	@Action("get-questions-of-topic")
	public String getQuestions() throws SQLException {
		if (this.session.get("admin") != null) {
			setSubject(getSubject());
			setQuizQuestionDetailsList(this.quizService.getQuizDetails(getSubject(), Integer.parseInt(getTopic())));

			return "success";
		}

		return "error";
	}
}
