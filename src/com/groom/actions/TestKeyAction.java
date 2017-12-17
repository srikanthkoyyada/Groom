package com.groom.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.groom.bean.QuizPoints;
import com.groom.bean.QuizQuestionDetails;
import com.groom.bean.User;
import com.groom.bean.UserRankBean;
import com.groom.service.QuizService;
import com.groom.service.impl.QuizServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@InterceptorRefs({ @InterceptorRef(value = "loginstack") })
@ParentPackage(value = "default")
@Action(value = "key", results = { @Result(name = "success", location = "/jsp/tests/key.jsp") })
public class TestKeyAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private List<QuizQuestionDetails> questionsList;
	QuizService quizService = new QuizServiceImpl();
	HttpServletRequest request = ServletActionContext.getRequest();

	HttpSession session = ServletActionContext.getRequest().getSession(false);
	private String category;
	private String topicid;
	private QuizPoints quizPoints;
	private UserRankBean userRankBean;
	private UserRankBean userCityRank;
	private UserRankBean userStateRank;
	private int totlaQuestions;
	
	

	public int getTotlaQuestions() {
		return totlaQuestions;
	}

	public void setTotlaQuestions(int totlaQuestions) {
		this.totlaQuestions = totlaQuestions;
	}

	public UserRankBean getUserCityRank() {
		return userCityRank;
	}

	public void setUserCityRank(UserRankBean userCityRank) {
		this.userCityRank = userCityRank;
	}

	public UserRankBean getUserStateRank() {
		return userStateRank;
	}

	public void setUserStateRank(UserRankBean userStateRank) {
		this.userStateRank = userStateRank;
	}

	public String execute() throws Exception {
		User user = (User) session.getAttribute("user");
		
		setQuestionsList(quizService.getQuizKey(getCategory(),
				Integer.parseInt(getTopicid()), user.getUserId()));
		setQuizPoints(quizService.getTopicScore(getCategory(),
				Integer.parseInt(getTopicid()), user.getUserId(),getQuestionsList().size()));
		//setTotlaQuestions(getQuestionsList().size());
		setUserRankBean(quizService.getUserRankInSubjectTopic(getCategory(),
				user.getUserId(), Integer.parseInt(getTopicid()))); 
		System.out.println("category for city wise rank"+getCategory());
		setUserCityRank(quizService.getUserRankInSubjectTopicbyLocation(
				getCategory(), user.getUserId(),
				Integer.parseInt(getTopicid()), "CITY", user.getCity()));
		System.out.println("category for state wise rank"+getCategory());
		setUserStateRank(quizService.getUserRankInSubjectTopicbyLocation(
				getCategory(), user.getUserId(),
				Integer.parseInt(getTopicid()), "STATE", user.getState()));

		return SUCCESS;
	}

	public List<QuizQuestionDetails> getQuestionsList() {
		return questionsList;
	}

	public void setQuestionsList(List<QuizQuestionDetails> questionsList) {
		this.questionsList = questionsList;
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

	public UserRankBean getUserRankBean() {
		return userRankBean;
	}

	public void setUserRankBean(UserRankBean userRankBean) {
		this.userRankBean = userRankBean;
	}

	public QuizPoints getQuizPoints() {
		return quizPoints;
	}

	public void setQuizPoints(QuizPoints quizPoints) {
		this.quizPoints = quizPoints;
	}

}
