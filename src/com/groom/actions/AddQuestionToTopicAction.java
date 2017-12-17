package com.groom.actions;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.groom.bean.QuizQuestionDetails;
import com.groom.service.AdminService;
import com.groom.service.impl.AdminServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
public class AddQuestionToTopicAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	AdminService adminService = new AdminServiceImpl();
	private File questionImage;
	private String questionImageFileName;
	private String questionImageContentType;
	private String subject;
	private String topic;
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

	public void setResult(String result) {
		this.result = result;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Action(value = "add-question-to-topic", results = {
			@org.apache.struts2.convention.annotation.Result(type = "json", params = { "contentType",
					"application/json", "root", "result" }) })
	public String addQuestion() throws SQLException {
		String fileName = null;
		String user = null;
		try {
			if (this.session.get("admin") != null) {
				user = this.session.get("admin").toString();
			} else {
				this.result = "logout";
				return "success";
			}
			int maxid = this.adminService.getMaxID(getSubject()) + 1;
			if (getQuestionImage() != null) {
				if ((int) getQuestionImage().length() > 2) {
					this.result = "File size is too large..!Please choose a file of size less than 2MB";
					return "success";
				}
				FileInputStream fis = new FileInputStream(getQuestionImage());
				fileName = maxid + getQuestionImageFileName().substring(getQuestionImageFileName().lastIndexOf("."),
						getQuestionImageFileName().length());
				String contentType = getQuestionImageContentType();
				System.out.println(contentType);
				System.out.println(fileName);
				String path = ServletActionContext.getServletContext().getRealPath("/quiz-images/") + "/" + getSubject()
						+ "/";

				File file = new File(path);
				file.mkdirs();
				File file2 = new File(file, fileName);
				FileOutputStream fos = new FileOutputStream(file2);
				byte[] b = new byte[(int) getQuestionImage().length()];
				while (fis.read(b) != -1) {
					fos.write(b);
				}

				fos.close();
				fis.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		QuizQuestionDetails questionDetails = new QuizQuestionDetails();
		questionDetails.setQuestion(getQuestion());
		questionDetails.setOption_a(getOption1());
		questionDetails.setOption_b(getOption2());
		questionDetails.setOption_c(getOption3());
		questionDetails.setOption_d(getOption4());
		questionDetails.setAnswer(getAnswer());
		questionDetails.setTopicid(Integer.parseInt(getTopic()));
		questionDetails.setExplanation(getExplanation());
		questionDetails.setImage_name(fileName);
		boolean isQuestionAdded = this.adminService.saveQuestion(questionDetails, getSubject(), user);
		if (isQuestionAdded) {
			this.result = "Question added successfully";
			return "success";
		}
		this.result = "Error while adding a question..! Please try again";
		return "success";
	}

	public File getQuestionImage() {
		return this.questionImage;
	}

	public void setQuestionImage(File questionImage) {
		this.questionImage = questionImage;
	}

	public String getQuestionImageFileName() {
		return this.questionImageFileName;
	}

	public void setQuestionImageFileName(String questionImageFileName) {
		this.questionImageFileName = questionImageFileName;
	}

	public String getQuestionImageContentType() {
		return this.questionImageContentType;
	}

	public void setQuestionImageContentType(String questionImageContentType) {
		this.questionImageContentType = questionImageContentType;
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
