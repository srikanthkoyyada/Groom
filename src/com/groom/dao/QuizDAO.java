package com.groom.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.groom.bean.QuizPoints;
import com.groom.bean.QuizQuestionDetails;
import com.groom.bean.SubjectAnalysisBean;
import com.groom.bean.TestsTopicList;
import com.groom.bean.UserRankBean;

public interface QuizDAO {

	public List<QuizQuestionDetails> getQuizDetails(String category,int topicid)
			throws SQLException;
	
	public List<QuizQuestionDetails> getQuizKey(String category,int topicid,int userid)
			throws SQLException;
	
	public Map<Integer, String> getQuizAnswers(String questionIds,
			String categroy) throws SQLException;

	public boolean saveQuizPoints(QuizPoints quizPoints) throws SQLException;

	public boolean getTestsAttemptedByUserStaus(int userid, String category)
			throws SQLException;
	
	public List<TestsTopicList> getTestTopics(int userid,String category,int standard,int test_category_id) throws SQLException;
	
	public boolean incrementQuestionsAttemptedCount(List<Integer> qids,String category) throws SQLException;
	
	public boolean incrementCorrectQuestionsAttemptedCount(List<Integer> qids,String category) throws SQLException;
	
	public QuizPoints getTopicScore(String category,int topicid,int userid,int total_questions) throws SQLException;
	
	public UserRankBean getUserRankInSubjectTopic(String subject,int user_id,int topic_id) throws SQLException;
	
	public UserRankBean getUserRankInSubjectTopicbyLocation(String subject,int user_id,int topic_id,String locationType,String location) throws SQLException;
	
	public SubjectAnalysisBean getUserSubjectWiseAnalysis(int user_id,int standard) throws SQLException;
	
	public SubjectAnalysisBean getUserSubjectWiseAnalysisByLocation(int user_id,int standard,String locationType,String location) throws SQLException;

	public List<TestsTopicList> getTestTopicsByCategory(int userid, String category,
			int division, int test_category_id) throws SQLException;

	public List<TestsTopicList> getTestTopicsByBoard(int userid, String category,
			int standard, int division)
			throws SQLException;

	public List<TestsTopicList> getSampleTestTopics(int userId,
			String category, int test_category_id, int standard) throws SQLException;

	public int getQuizDivision(String category, int topicid) throws SQLException;
}
