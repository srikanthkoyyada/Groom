package com.groom.bean;

import java.io.Serializable;
import java.sql.Date;

public class TestsTopicList implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int topicId;
	private String topicName;
	private int topicClass;
	private String testDate;
	private String isStudentAttempted;
	private String questionIdsList;
	private String isKeyAndResultAvailable;
	
	
	
	

	public String getIsKeyAndResultAvailable() {
		return isKeyAndResultAvailable;
	}

	public void setIsKeyAndResultAvailable(String isKeyAndResultAvailable) {
		this.isKeyAndResultAvailable = isKeyAndResultAvailable;
	}

	public String getQuestionIdsList() {
		return questionIdsList;
	}

	public void setQuestionIdsList(String questionIdsList) {
		this.questionIdsList = questionIdsList;
	}

	public int getTopicId() {
		return topicId;
	}

	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}

	public String getTopicName() {
		return topicName;
	}

	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}

	public int getTopicClass() {
		return topicClass;
	}

	public void setTopicClass(int topicClass) {
		this.topicClass = topicClass;
	}

	public String getTestDate() {
		return testDate;
	}

	public void setTestDate(String testDate) {
		this.testDate = testDate;
	}

	public String getIsStudentAttempted() {
		return isStudentAttempted;
	}

	public void setIsStudentAttempted(String isStudentAttempted) {
		this.isStudentAttempted = isStudentAttempted;
	}

}
