package com.groom.actions;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;
import org.apache.struts2.convention.annotation.Results;

import com.groom.bean.SubjectAnalysisBean;
import com.groom.bean.User;
import com.groom.service.QuizService;
import com.groom.service.impl.QuizServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@InterceptorRefs({ @InterceptorRef(value = "loginstack") })
@ParentPackage(value = "default")
@ResultPath(value = "/jsp")
@Results({ @Result(name = "success", location = "analysis.jsp") })
public class UserSubjectAnalysisAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = ServletActionContext.getRequest().getSession(false);
	private SubjectAnalysisBean subjectAnalysisBean;
	private SubjectAnalysisBean subjectAnalysisByCity;
	private SubjectAnalysisBean subjectAnalysisByState;
	
	QuizService quizService=new QuizServiceImpl();
	
	

	public SubjectAnalysisBean getSubjectAnalysisByCity() {
		return subjectAnalysisByCity;
	}

	public void setSubjectAnalysisByCity(SubjectAnalysisBean subjectAnalysisByCity) {
		this.subjectAnalysisByCity = subjectAnalysisByCity;
	}

	public SubjectAnalysisBean getSubjectAnalysisByState() {
		return subjectAnalysisByState;
	}

	public void setSubjectAnalysisByState(SubjectAnalysisBean subjectAnalysisByState) {
		this.subjectAnalysisByState = subjectAnalysisByState;
	}

	public SubjectAnalysisBean getSubjectAnalysisBean() {
		return subjectAnalysisBean;
	}

	public void setSubjectAnalysisBean(SubjectAnalysisBean subjectAnalysisBean) {
		this.subjectAnalysisBean = subjectAnalysisBean;
	}

	@Action(value = "analysis")
	public String execute() throws SQLException {
		User user = (User) session.getAttribute("user");
		setSubjectAnalysisBean(quizService.getUserSubjectWiseAnalysis(user.getUserId(), Integer.parseInt(user.getStandard())));
		setSubjectAnalysisByState(quizService.getUserSubjectWiseAnalysisByLocation(user.getUserId(), Integer.parseInt(user.getStandard()), "STATE", user.getState()));
		setSubjectAnalysisByCity(quizService.getUserSubjectWiseAnalysisByLocation(user.getUserId(), Integer.parseInt(user.getStandard()), "CITY", user.getCity()));
		return SUCCESS;
	}

}