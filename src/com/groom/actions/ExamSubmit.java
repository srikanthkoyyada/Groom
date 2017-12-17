package com.groom.actions;

import java.sql.SQLException;
import java.sql.Time;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.groom.bean.QuizPoints;
import com.groom.bean.User;
import com.groom.service.QuizService;
import com.groom.service.UserService;
import com.groom.service.impl.QuizServiceImpl;
import com.groom.service.impl.UserServiceImpl;
import com.groom.util.GroomUtil;
import com.opensymphony.xwork2.ActionSupport;

@InterceptorRefs({ @InterceptorRef(value = "loginstack"),
		@InterceptorRef(value = "token") })
@ParentPackage(value = "default")
@Action(value = "quiz-submit", results = {
		@Result(name = "success", location = "/jsp/tests/quizSubmission.jsp"),
		@Result(name = "invalid.token", location = "/jsp/tests/quizzes.jsp") })
public class ExamSubmit extends ActionSupport implements ServletRequestAware {

	private static final long serialVersionUID = 1L;
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = ServletActionContext.getRequest().getSession(false);
	QuizService quizService = new QuizServiceImpl();
	UserService userService = new UserServiceImpl();
	int totalQuestionsAttempted;
	int correctAnswers;
	List<Integer> attemptQuesIds = new ArrayList<Integer>();
	List<Integer> correctAttemptedQuesIds = new ArrayList<Integer>();
	StringBuffer userAnswers = new StringBuffer();

	public int getTotalQuestionsAttempted() {
		return totalQuestionsAttempted;
	}

	public void setTotalQuestionsAttempted(int totalQuestionsAttempted) {
		this.totalQuestionsAttempted = totalQuestionsAttempted;
	}

	public int getCorrectAnswers() {
		return correctAnswers;
	}

	public void setCorrectAnswers(int correctAnswers) {
		this.correctAnswers = correctAnswers;
	}

	public String execute() throws SQLException, ParseException {
		StringBuilder questionIds = new StringBuilder();
		int quizSize = Integer.parseInt(request.getParameter("quizsize"));
		int attempted = 0;
		int correct = 0;
		int incorrect = 0;
		int notAttempted = 0;
		for (int i = 1; i <= quizSize; i++) {
			questionIds.append(request.getParameter("qno" + i));
			if (i < quizSize)
				questionIds.append(",");

		}
		Map<Integer, String> answers = quizService.getQuizAnswers(
				questionIds.toString(), request.getParameter("category"));

		for (int i = 1; i <= quizSize; i++) {
			if (request.getParameter("q" + i) != null) {
				userAnswers.append(request.getParameter("q" + i).toString());
				attempted++;
				int keyValue = Integer
						.parseInt(request.getParameter("qno" + i));
				attemptQuesIds.add(keyValue);
				if (answers.get(keyValue).equals(request.getParameter("q" + i))) {
					correctAttemptedQuesIds.add(keyValue);
					correct++;
				} else
					incorrect++;
			} else {
				userAnswers.append("X");
				notAttempted++;
			}

		}

		String timeRemaining = request.getParameter("timetaken");
		System.out.println("time remaining is:::" + timeRemaining.trim());
		QuizPoints quizPoints = new QuizPoints();
		User user = (User) session.getAttribute("user");
		quizPoints.setU_id(user.getUserId());
		quizPoints.setPoints(correct);
		quizPoints.setCateogry(request.getParameter("category"));
		quizPoints.setAnswers(userAnswers.toString());
		quizPoints
				.setTopicid(Integer.parseInt(request.getParameter("topicid")));
		quizPoints.setQuestionIds(questionIds.toString());

		quizPoints.setTestDate(GroomUtil.convertStringtoSqlDate(request
				.getParameter("testDate")));
		Time timeTaken = GroomUtil.getSqlTimeDiff("00:40:00",
				timeRemaining.trim());
		// System.out.println("time taken to do the quiz"+timeTaken);
		quizPoints.setTime(timeTaken);
		userService.updateUserSubjectPoints(quizPoints.getCateogry(),
				user.getUserId(), correct);
		userService.updateUserTotalPoints(user.getUserId(), correct);
		quizService.saveQuizPoints(quizPoints);
		if (!attemptQuesIds.isEmpty()) {
			quizService.incrementQuestionsAttemptedCount(attemptQuesIds,
					quizPoints.getCateogry());
		}
		if (!correctAttemptedQuesIds.isEmpty()) {
			quizService.incrementCorrectQuestionsAttemptedCount(
					correctAttemptedQuesIds, quizPoints.getCateogry());
		}
		setTotalQuestionsAttempted(attempted);
		setCorrectAnswers(correct);

		return SUCCESS;

	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public HttpServletRequest getServletRequest() {
		return this.request;
	}

}