package com.groom.bean;

import java.io.Serializable;

public class QuizQuestionDetails implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int q_id;
	private String question;
	private String option_a;
	private String option_b;
	private String option_c;
	private String option_d;
	private String answer;
	private String image_name;
	private String explanation;
	private int topicid;
	private int no_of_attempts;
	private int no_of_correct_answers;
	private String userAnswer;
	private String test_by;
	private int test_time;
	
	
	
	public int getTest_time() {
		return test_time;
	}

	public void setTest_time(int test_time) {
		this.test_time = test_time;
	}

	public String getTest_by() {
		return test_by;
	}

	public void setTest_by(String test_by) {
		this.test_by = test_by;
	}

	public String getUserAnswer() {
		return userAnswer;
	}

	public void setUserAnswer(String userAnswer) {
		this.userAnswer = userAnswer;
	}

	public int getNo_of_attempts() {
		return no_of_attempts;
	}

	public void setNo_of_attempts(int no_of_attempts) {
		this.no_of_attempts = no_of_attempts;
	}

	public int getNo_of_correct_answers() {
		return no_of_correct_answers;
	}

	public void setNo_of_correct_answers(int no_of_correct_answers) {
		this.no_of_correct_answers = no_of_correct_answers;
	}

	public int getTopicid() {
		return topicid;
	}

	public void setTopicid(int topicid) {
		this.topicid = topicid;
	}

	public int getQ_id() {
		return q_id;
	}

	public void setQ_id(int q_id) {
		this.q_id = q_id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getOption_a() {
		return option_a;
	}

	public void setOption_a(String option_a) {
		this.option_a = option_a;
	}

	public String getOption_b() {
		return option_b;
	}

	public void setOption_b(String option_b) {
		this.option_b = option_b;
	}

	public String getOption_c() {
		return option_c;
	}

	public void setOption_c(String option_c) {
		this.option_c = option_c;
	}

	public String getOption_d() {
		return option_d;
	}

	public void setOption_d(String option_d) {
		this.option_d = option_d;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getImage_name() {
		return image_name;
	}

	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}

	public String getExplanation() {
		return explanation;
	}

	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}

}
