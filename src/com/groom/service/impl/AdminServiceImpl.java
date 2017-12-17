package com.groom.service.impl;

import java.sql.Date;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import com.groom.bean.QuizQuestionDetails;
import com.groom.bean.Shine;
import com.groom.dao.AdminDAO;
import com.groom.dao.impl.AdminDAOImpl;
import com.groom.service.AdminService;

public class AdminServiceImpl implements AdminService {

	AdminDAO dao = new AdminDAOImpl();

	@Override
	public boolean addSubjectTopic(String subject, String topicName,
			int standard, Date testDate,int test_category_id,String test_by,int test_time) throws SQLException {
		return dao.addSubjectTopic(subject, topicName, standard, testDate,test_category_id,test_by,test_time);
	}

	@Override
	public HashMap<Integer, String> getTopics(String subject)
			throws SQLException {
		return dao.getTopics(subject);
	}
	
	@Override
	public HashMap<Integer, String> getTopicsByStandard(String subject, int standard, int division)
			throws SQLException {
		return dao.getTopicsByStandard(subject, standard, division);
	}
	
	@Override
	public HashMap<String, String> getCategoryByStandard(int standard)
			throws SQLException {
		return dao.getCategoryByStandard(standard);
	}

	@Override
	public int getMaxID(String subject) throws SQLException {
		
		return dao.getMaxID(subject);
	}

	@Override
	public boolean saveQuestion(QuizQuestionDetails questionDetails,
			String subject,String user) throws SQLException {
		return dao.saveQuestion(questionDetails, subject,user);
	}

	@Override
	public List<String> getShineResultNames() throws SQLException {
		return dao.getShineResultNames();
	}

	@Override
	public Shine getUserResults(int standard, String school_code,
			String roll_number) throws SQLException {
		return dao.getUserResults(standard, school_code, roll_number);
				
	}

	@Override
	public HashMap<Integer, String> getTestCategories() throws SQLException {
		return dao.getTestCategories();
	}

	@Override
	public boolean validateAdmin(String username, String password) throws SQLException {
		return this.dao.validateAdmin(username, password);
	}

	@Override
	public boolean updateQuestion(QuizQuestionDetails questionDetails, String subject, String user)
			throws SQLException {
		return this.dao.updateQuestion(questionDetails, subject, user);
	}

}
