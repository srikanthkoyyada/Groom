package com.groom.bean;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;

public class QuizPoints implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int u_id;
	private int points;
	private String cateogry;
	private Time time;
	private String questionIds;
	private int topicid;
	private Date testDate;
	private String answers;
	private int totalAttempted;
	private int wrongAnswers;
	
	
	
	
	
	

	public int getWrongAnswers() {
		return wrongAnswers;
	}

	public void setWrongAnswers(int wrongAnswers) {
		this.wrongAnswers = wrongAnswers;
	}

	public int getTotalAttempted() {
		return totalAttempted;
	}

	public void setTotalAttempted(int totalAttempted) {
		this.totalAttempted = totalAttempted;
	}

	public String getAnswers() {
		return answers;
	}

	public void setAnswers(String answers) {
		this.answers = answers;
	}

	public Date getTestDate() {
		return testDate;
	}

	public void setTestDate(Date testDate) {
		this.testDate = testDate;
	}

	public int getTopicid() {
		return topicid;
	}

	public void setTopicid(int topicid) {
		this.topicid = topicid;
	}

	public String getQuestionIds() {
		return questionIds;
	}

	public void setQuestionIds(String questionIds) {
		this.questionIds = questionIds;
	}

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public String getCateogry() {
		return cateogry;
	}

	public void setCateogry(String cateogry) {
		this.cateogry = cateogry;
	}

	public Time getTime() {
		return time;
	}

	public void setTime(Time time) {
		this.time = time;
	}

}
