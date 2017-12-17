package com.groom.service.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.groom.bean.QuizPoints;
import com.groom.bean.QuizQuestionDetails;
import com.groom.bean.SubjectAnalysisBean;
import com.groom.bean.TestsTopicList;
import com.groom.bean.UserRankBean;
import com.groom.dao.QuizDAO;
import com.groom.dao.impl.QuizDAOImpl;
import com.groom.service.QuizService;

public class QuizServiceImpl implements QuizService {

	QuizDAO dao = new QuizDAOImpl();

	@Override
	public List<QuizQuestionDetails> getQuizDetails(String category,int topicid)
			throws SQLException {

		return dao.getQuizDetails(category, topicid);
				
	}

	@Override
	public Map<Integer, String> getQuizAnswers(String questionIds,
			String category) throws SQLException {
		return dao.getQuizAnswers(questionIds, category);
	}

	@Override
	public boolean saveQuizPoints(QuizPoints quizPoints) throws SQLException {

		return dao.saveQuizPoints(quizPoints);
	}

	@Override
	public boolean getTestsAttemptedByUserStaus(int userid, String category)
			throws SQLException {

		return dao.getTestsAttemptedByUserStaus(userid, category);
	}

	@Override
	public List<TestsTopicList> getTestTopics(int userid,String category,int standard,int test_category_id) throws SQLException {
		
		return dao.getTestTopics(userid, category,standard,test_category_id);
	}

	@Override
	public boolean incrementQuestionsAttemptedCount(List<Integer> qids,
			String category) throws SQLException {
		return dao.incrementQuestionsAttemptedCount(qids, category);
	}

	@Override
	public boolean incrementCorrectQuestionsAttemptedCount(List<Integer> qids,
			String category) throws SQLException {
		return dao.incrementCorrectQuestionsAttemptedCount(qids, category);
	}

	@Override
	public List<QuizQuestionDetails> getQuizKey(String category, int topicid,
			int userid) throws SQLException {
		return dao.getQuizKey(category, topicid, userid);
	}

	@Override
	public QuizPoints getTopicScore(String category, int topicid, int userid,int total_questions)
			throws SQLException {
		return dao.getTopicScore(category, topicid, userid,total_questions);
	}

	@Override
	public UserRankBean getUserRankInSubjectTopic(String subject, int user_id,
			int topic_id) throws SQLException {
		
		return dao.getUserRankInSubjectTopic(subject, user_id, topic_id);
	}

	@Override
	public UserRankBean getUserRankInSubjectTopicbyLocation(String subject,
			int user_id, int topic_id, String locationType, String location)
			throws SQLException {
		
		return dao.getUserRankInSubjectTopicbyLocation(subject, user_id, topic_id, locationType, location);
	}

	@Override
	public SubjectAnalysisBean getUserSubjectWiseAnalysis(int user_id,
			int standard) throws SQLException {
		return dao.getUserSubjectWiseAnalysis(user_id, standard);
	}

	@Override
	public SubjectAnalysisBean getUserSubjectWiseAnalysisByLocation(
			int user_id, int standard, String locationType, String location)
			throws SQLException {
		
		return dao.getUserSubjectWiseAnalysisByLocation(user_id, standard, locationType, location);
	}

	@Override
	public List<TestsTopicList> getTestTopicsByCategory(int userId,
			String category, int division, int test_category_id) throws SQLException {
		
		return dao.getTestTopicsByCategory(userId, category,division,test_category_id);
	}

	@Override
	public List<TestsTopicList> getTestTopicsByBoard(int userId,
			String category, int standard, int division) throws SQLException {
		
		return dao.getTestTopicsByBoard(userId, category, standard, division);
	}
	
	@Override
	public List<TestsTopicList> getSampleTestTopics(int userId,
			String category, int test_category_id, int standard) throws SQLException {
		
		return dao.getSampleTestTopics(userId, category,test_category_id, standard);
	}
	
	@Override
	public int getQuizDivision(String category, int topicid) throws SQLException {
		return dao.getQuizDivision(category, topicid);
	}

}
