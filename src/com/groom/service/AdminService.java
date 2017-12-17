package com.groom.service;

import java.sql.Date;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.groom.bean.QuizQuestionDetails;
import com.groom.bean.Shine;

public interface AdminService {
	public boolean addSubjectTopic(String subject, String topicName,
			int standard, Date testDate,int test_category_id,String test_by,int test_time) throws SQLException;
	
	public HashMap<Integer, String> getTopics(String subject) throws SQLException;
	
	public int getMaxID(String subject) throws SQLException;
	
	public boolean saveQuestion(QuizQuestionDetails questionDetails,String subject,String user) throws SQLException;
	
	public List<String> getShineResultNames() throws SQLException;
	
	public Shine getUserResults(int standard, String school_code,
			String roll_number) throws SQLException;
	
	public HashMap<Integer, String> getTestCategories() throws SQLException;

	public HashMap<Integer, String> getTopicsByStandard(String subject, int standard, int division)
			throws SQLException;

	public HashMap<String, String> getCategoryByStandard(int standard)
			throws SQLException;
	
	public abstract boolean validateAdmin(String paramString1, String paramString2)
		    throws SQLException;
	
	public boolean updateQuestion(QuizQuestionDetails questionDetails, String subject, String user)throws SQLException;
}
