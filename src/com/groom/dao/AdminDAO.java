package com.groom.dao;

import java.sql.Date;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import com.groom.bean.QuizQuestionDetails;
import com.groom.bean.Shine;
import com.groom.bean.Video;

public interface AdminDAO {

	public boolean addSubjectTopic(String subject, String topicName,
			int standard, Date testDate,int test_category_id,String test_by,int test_time) throws SQLException;

	public HashMap<Integer, String> getTopics(String subject)
			throws SQLException;

	public int getMaxID(String subject) throws SQLException;

	public boolean saveQuestion(QuizQuestionDetails questionDetails,
			String subject,String user) throws SQLException;

	public List<String> getShineResultNames() throws SQLException;

	public Shine getUserResults(int standard, String school_code,
			String roll_number) throws SQLException;
	
	public HashMap<Integer, String> getTestCategories() throws SQLException;

	public boolean saveVideoURL(int standard, String subject, String title, String description, String url) throws SQLException;

	public List<Video> getAllVideos() throws SQLException;

	public Video getVideoById(int id) throws SQLException;
	
	public List<Video> getAllVideosBySubject(String subject) throws SQLException;
	
	public List<Video> getAllVideosByStandard(int standard) throws SQLException;
	
	public List<Video> getAllVideosByStandardAndSubject(int standard, String subject) throws SQLException;
	
	public abstract Integer getNoofQuestions(String category, int topicId) throws SQLException;

	public HashMap<Integer, String> getTopicsByStandard(String subject, int standard, int division)
			throws SQLException;

	public HashMap<String, String> getCategoryByStandard(int standard)
			throws SQLException;
	
	public boolean validateAdmin(String username, String password) throws SQLException;
	
	public boolean updateQuestion(QuizQuestionDetails questionDetails, String subject, String user)throws SQLException;

}
