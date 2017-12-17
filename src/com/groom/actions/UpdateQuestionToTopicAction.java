package com.groom.actions;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.groom.bean.QuizQuestionDetails;
import com.groom.service.AdminService;
import com.groom.service.impl.AdminServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
public class UpdateQuestionToTopicAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	AdminService adminService = new AdminServiceImpl();
	private String subject;
	private String qid;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String answer;
	private String explanation;
	private String question;
	private String result;
	private SessionMap<String, Object> session;

	public String getResult() {
		return this.result;
	}

	public String getQid() {
		return this.qid;
	}

	public void setQid(String qid) {
		this.qid = qid;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Action(value = "update-question-by-id", results = {
			@org.apache.struts2.convention.annotation.Result(type = "json", params = { "contentType",
					"application/json", "root", "result" }) })
	public String addQuestion() throws SQLException {
		String fileName = null;
		String user = null;

		if (this.session.get("admin") != null) {
			user = this.session.get("admin").toString();
		} else {
			this.result = "logout";
			return "success";
		}
		System.out.println("getQid()::" + getQid());
		QuizQuestionDetails questionDetails = new QuizQuestionDetails();
		questionDetails.setQuestion(getQuestion());
		questionDetails.setOption_a(getOption1());
		questionDetails.setOption_b(getOption2());
		questionDetails.setOption_c(getOption3());
		questionDetails.setOption_d(getOption4());
		questionDetails.setAnswer(getAnswer());
		questionDetails.setExplanation(getExplanation());
		questionDetails.setQ_id(Integer.parseInt(getQid()));

		boolean isQuestionAdded = this.adminService.updateQuestion(questionDetails, getSubject(), user);
		if (isQuestionAdded) {
			this.result = "Question updated successfully";
			return "success";
		}
		this.result = "Error while updating question..! Please try again";
		return "success";
	}

	public String getSubject() {
		return this.subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getOption1() {
		return this.option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return this.option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return this.option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return this.option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getExplanation() {
		return this.explanation;
	}

	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}

	public void setSession(Map<String, Object> map) {
		this.session = ((SessionMap) map);
	}
}
