package com.groom.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.groom.bean.QuizPoints;
import com.groom.bean.QuizQuestionDetails;
import com.groom.bean.SubjectAnalysisBean;
import com.groom.bean.TestsTopicList;
import com.groom.bean.UserRankBean;
import com.groom.dao.BaseDAO;
import com.groom.dao.QuizDAO;
import com.groom.util.GroomUtil;

public class QuizDAOImpl extends BaseDAO implements QuizDAO {

	@Override
	public List<QuizQuestionDetails> getQuizDetails(String category, int topicid)
			throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<QuizQuestionDetails> questionDetails = new ArrayList<QuizQuestionDetails>();
		try {
			/*String query = "SELECT * FROM " + category
					+ " WHERE TOPIC_ID=? ORDER BY RAND() LIMIT 20";*/
			String query = "SELECT X.*,XT.TEST_BY,XT.TEST_TIME FROM "+category+" X join "+category+"_topics XT on X.TOPIC_ID=XT.TOPIC_ID"
					+ " WHERE X.TOPIC_ID=? ORDER BY X.Q_ID";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, topicid);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				QuizQuestionDetails details = new QuizQuestionDetails();
				details.setQ_id(resultSet.getInt("Q_ID"));
				details.setQuestion(resultSet.getString("QUESTION"));
				details.setOption_a(resultSet.getString("OPTION_A"));
				details.setOption_b(resultSet.getString("OPTION_B"));
				details.setOption_c(resultSet.getString("OPTION_C"));
				details.setOption_d(resultSet.getString("OPTION_D"));
				details.setAnswer(resultSet.getString("ANSWER"));
				details.setTopicid(resultSet.getInt("TOPIC_ID"));
				if (resultSet.getString("Q_IMAGE_NAME") != null)
					details.setImage_name(resultSet.getString("Q_IMAGE_NAME")
							.trim());
				else
					details.setImage_name(resultSet.getString("Q_IMAGE_NAME"));
				details.setExplanation(resultSet.getString("Q_EXPLANATION"));
				details.setTest_by(resultSet.getString("TEST_BY"));
				details.setTest_time(resultSet.getInt("TEST_TIME"));
				questionDetails.add(details);

			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return questionDetails;
	}

	@Override
	public Map<Integer, String> getQuizAnswers(String questionIds,
			String category) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		Map<Integer, String> answers = new HashMap<Integer, String>();
		try {
			String query = "SELECT Q_ID,ANSWER FROM " + category
					+ " WHERE Q_ID IN(" + questionIds + ")";
			preparedStatement = connection.prepareStatement(query);

			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				// System.out.println(resultSet.getInt("Q_ID")+":::::::"+resultSet.getString("ANSWER"));
				answers.put(resultSet.getInt("Q_ID"),
						resultSet.getString("ANSWER"));
			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return answers;
	}

	@Override
	public boolean saveQuizPoints(QuizPoints quizPoints) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			String query = "INSERT INTO "
					+ quizPoints.getCateogry()
					+ "_TEST_POINTS(USER_ID,POINTS,TOPIC_ID,QUESTION_IDS,TIME,TEST_DATE,ANSWERS_GIVEN) VALUES(?,?,?,?,?,?,?)";
			// System.out.println(query);
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, quizPoints.getU_id());
			preparedStatement.setInt(2, quizPoints.getPoints());
			preparedStatement.setInt(3, quizPoints.getTopicid());
			preparedStatement.setString(4, quizPoints.getQuestionIds());
			preparedStatement.setTime(5, quizPoints.getTime());
			preparedStatement.setDate(6, quizPoints.getTestDate());
			preparedStatement.setString(7, quizPoints.getAnswers());

			int status = preparedStatement.executeUpdate();
			if (status == 1)
				return true;
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return false;
	}

	@Override
	public boolean getTestsAttemptedByUserStaus(int userid, String category)
			throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			String query = "SELECT * FROM " + category
					+ "_TEST_POINTS WHERE USER_ID=? AND TEST_DATE=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, userid);
			preparedStatement.setDate(2, GroomUtil.getCurrentDate());
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next())
				return true;

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}

		return false;
	}

	@Override
	public List<TestsTopicList> getTestTopics(int userid, String category,
			int standard,int test_category_id) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<TestsTopicList> topicLists = new ArrayList<TestsTopicList>();

		try {
			String query = "SELECT * FROM " + category
					+ "_TOPICS WHERE TOPIC_CLASS=? AND TEST_DATE <='"
					+ GroomUtil.getCurrentDate() + "' AND TEST_CATEGORY_ID=?";

			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, standard);
			preparedStatement.setInt(2, test_category_id);
			resultSet = preparedStatement.executeQuery();

			java.util.Date currentDate = new java.util.Date(GroomUtil
					.getCurrentDate().getTime());
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			currentDate = dateFormat.parse(dateFormat.format(currentDate));
			while (resultSet.next()) {

				TestsTopicList topic = new TestsTopicList();
				topic.setTopicId(resultSet.getInt("TOPIC_ID"));
				topic.setTopicName(resultSet.getString("TOPIC_NAME"));
				topic.setTopicClass(resultSet.getInt("TOPIC_CLASS"));
				topic.setTestDate(resultSet.getDate("TEST_DATE").toString());
				// System.out.println(resultSet.getDate("TEST_DATE"));
				java.util.Date testDate = new java.util.Date(resultSet.getDate(
						"TEST_DATE").getTime());
				testDate = dateFormat.parse(dateFormat.format(testDate));
				/*
				 * System.out.println(testDate+":::"+currentDate);
				 * System.out.println(testDate.before(currentDate));
				 * System.out.println(testDate.equals(currentDate));
				 */
				if (testDate.compareTo(currentDate) > 0
						|| testDate.compareTo(currentDate) == 0) {
					topic.setIsKeyAndResultAvailable("NO");
				} else
					topic.setIsKeyAndResultAvailable("YES");
				String pointsQuery = "SELECT * FROM " + category
						+ "_TEST_POINTS WHERE USER_ID=? AND TOPIC_ID=?";
				preparedStatement = connection.prepareStatement(pointsQuery);
				preparedStatement.setInt(1, userid);
				preparedStatement.setInt(2, resultSet.getInt("TOPIC_ID"));
				ResultSet userPointsResultSet = preparedStatement
						.executeQuery();
				if (userPointsResultSet.next()) {
					topic.setIsStudentAttempted("YES");
					topic.setQuestionIdsList(userPointsResultSet
							.getString("QUESTION_IDS"));
				} else {
					topic.setIsStudentAttempted("NO");
				}
				topicLists.add(topic);
			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} catch (ParseException exception) {
			exception.printStackTrace();
		}

		finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}

		return topicLists;
	}

	@Override
	public boolean incrementQuestionsAttemptedCount(List<Integer> qids,
			String category) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		try {
			String ids = StringUtils.join(qids, ",");
			String query = "UPDATE " + category
					+ " SET NO_OF_ATTEMPTS=NO_OF_ATTEMPTS+1 WHERE Q_ID IN("
					+ ids + ")";
			System.out.println(query);
			preparedStatement = connection.prepareStatement(query);
			int updateStatus = preparedStatement.executeUpdate();
			if (updateStatus != 0)
				return true;
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {

			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}

		return false;
	}

	@Override
	public boolean incrementCorrectQuestionsAttemptedCount(List<Integer> qids,
			String category) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		try {
			String ids = StringUtils.join(qids, ",");
			String query = "UPDATE "
					+ category
					+ " SET NO_OF_CORRECT_ANSWERS=NO_OF_CORRECT_ANSWERS+1 WHERE Q_ID IN("
					+ ids + ")";
			System.out.println(query);
			preparedStatement = connection.prepareStatement(query);
			int updateStatus = preparedStatement.executeUpdate();
			if (updateStatus != 0)
				return true;
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {

			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}

		return false;
	}

	public String getUserTestQuestionsIdsString(int topicid, int userid,
			String category) throws SQLException {

		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String questionids = null;
		try {
			String query = "SELECT QUESTION_IDS FROM " + category
					+ "_TEST_POINTS WHERE USER_ID=? AND TOPIC_ID=?";

			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, userid);
			preparedStatement.setInt(2, topicid);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				questionids = resultSet.getString("QUESTION_IDS");

			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return questionids;
	}

	@Override
	public List<QuizQuestionDetails> getQuizKey(String category, int topicid,
			int userid) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<QuizQuestionDetails> questionDetails = new ArrayList<QuizQuestionDetails>();
		String qids = getUserTestQuestionsIdsString(topicid, userid, category);
		try {
			String query = "SELECT * FROM " + category + " WHERE Q_ID IN("
					+ qids + ") ORDER BY FIELD(Q_ID," + qids + ")";
			System.out.println(query);
			preparedStatement = connection.prepareStatement(query);
			String userString = getUserAnswers(category, topicid, userid);
			resultSet = preparedStatement.executeQuery();
			int i = 0;
			while (resultSet.next()) {
				QuizQuestionDetails details = new QuizQuestionDetails();
				details.setQ_id(resultSet.getInt("Q_ID"));
				details.setQuestion(resultSet.getString("QUESTION"));
				details.setOption_a(resultSet.getString("OPTION_A"));
				details.setOption_b(resultSet.getString("OPTION_B"));
				details.setOption_c(resultSet.getString("OPTION_C"));
				details.setOption_d(resultSet.getString("OPTION_D"));
				details.setAnswer(resultSet.getString("ANSWER"));
				details.setTopicid(resultSet.getInt("TOPIC_ID"));
				details.setImage_name(resultSet.getString("Q_IMAGE_NAME"));
				details.setExplanation(resultSet.getString("Q_EXPLANATION"));
				details.setNo_of_attempts(resultSet.getInt("NO_OF_ATTEMPTS"));
				details.setNo_of_correct_answers(resultSet
						.getInt("NO_OF_CORRECT_ANSWERS"));
				if (String.valueOf(userString.charAt(i)).equals("X"))
					details.setUserAnswer("NOT ANSWERED");
				else
					details.setUserAnswer(String.valueOf(userString.charAt(i)));
				questionDetails.add(details);
				i++;

			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return questionDetails;
	}

	private String getUserAnswers(String category, int topicid, int userid)
			throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String userAnswers = null;
		try {
			String query = "SELECT ANSWERS_GIVEN FROM " + category
					+ "_TEST_POINTS WHERE USER_ID=? AND TOPIC_ID=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, userid);
			preparedStatement.setInt(2, topicid);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				userAnswers = resultSet.getString("ANSWERS_GIVEN");

			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return userAnswers;
	}

	@Override
	public QuizPoints getTopicScore(String category, int topicid, int userid,int total_questions)
			throws SQLException {

		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		QuizPoints quizPoints = new QuizPoints();
		try {
			String query = "SELECT * FROM " + category
					+ "_TEST_POINTS WHERE USER_ID=? AND TOPIC_ID=?";

			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, userid);
			preparedStatement.setInt(2, topicid);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				quizPoints.setU_id(resultSet.getInt("USER_ID"));
				quizPoints.setTopicid(resultSet.getInt("TOPIC_ID"));

				quizPoints.setAnswers(resultSet.getString("ANSWERS_GIVEN"));
				quizPoints.setPoints(resultSet.getInt("POINTS"));
				quizPoints.setQuestionIds(resultSet.getString("QUESTION_IDS"));
				quizPoints.setTestDate(resultSet.getDate("TEST_DATE"));
				quizPoints.setTime(resultSet.getTime("TIME"));
				String answerString = resultSet.getString("ANSWERS_GIVEN");

				quizPoints.setTotalAttempted(total_questions - StringUtils.countMatches(
						answerString, "X"));
				quizPoints.setWrongAnswers(quizPoints.getTotalAttempted()-quizPoints.getPoints());

			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return quizPoints;
	}

	@Override
	public UserRankBean getUserRankInSubjectTopic(String subject, int user_id,
			int topic_id) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		UserRankBean userRankBean = new UserRankBean();
		try {
			Statement statement=connection.createStatement();
			statement.execute("SET @prev_value = NULL");
			statement.execute("SET @rank_count = 0");
			
			String query = "SELECT * from (SELECT USER_ID, POINTS, CASE"
					+ " WHEN @prev_value = POINTS THEN @rank_count"
					+ " WHEN @prev_value := POINTS THEN @rank_count := @rank_count + 1"
					+ " END AS RANK,(SELECT COUNT(*)*2 FROM "
					+ subject
					+ "_test_points where TOPIC_ID=?) as TOTAL_RANKS"
					+ " FROM "
					+ subject
					+ "_test_points where TOPIC_ID=? "
					+ "ORDER BY POINTS) a WHERE  USER_ID=?";
			System.out.println(query);
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, topic_id);
			preparedStatement.setInt(2, topic_id);
			preparedStatement.setInt(3, user_id);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
					userRankBean.setUser_id(resultSet.getInt("USER_ID"));
					userRankBean.setPoints(resultSet.getInt("POINTS"));
					userRankBean.setRank(resultSet.getInt("RANK"));
					userRankBean.setTotal_ranks(resultSet.getInt("TOTAL_RANKS"));
					double subjectRank=(double)resultSet.getInt("RANK")/resultSet.getInt("TOTAL_RANKS");
					DecimalFormat noOfDecimals = new DecimalFormat("#0.00");
					userRankBean.setSubject_percentile(Double.parseDouble(noOfDecimals.format(100-(subjectRank*100))));
			}
			System.out.println(userRankBean.getRank());
			System.out.println(userRankBean.getTotal_ranks());
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return userRankBean;
	}

	@Override
	public UserRankBean getUserRankInSubjectTopicbyLocation(String subject,
			int user_id, int topic_id, String locationType, String location)
			throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		UserRankBean userRank=new UserRankBean();
		try {
			Statement statement=connection.createStatement();
			statement.execute("SET @prev_value = NULL");
			statement.execute("SET @rank_count = 0");
			String query="select * from (select a.user_id,a.points,a.rank,a.total_ranks "
					+"from (SELECT USER_ID,POINTS, CASE WHEN @prev_value = POINTS THEN @rank_count "
					+"WHEN @prev_value := POINTS THEN @rank_count := @rank_count + 1 "
					+"END AS RANK,(SELECT COUNT(*)*2 FROM "+subject+"_test_points m join user u on u.USER_ID=m.user_id "
					+"where u."+locationType+"=? and m.TOPIC_ID=?) as TOTAL_RANKS "
					+"FROM "+subject+"_test_points where TOPIC_ID=? ORDER BY POINTS)a join user u on u.USER_ID=a.user_id "
					+"where u."+locationType+"=?)x where USER_ID=?";
			
			System.out.println(query);
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, location);
			preparedStatement.setInt(2, topic_id);
			preparedStatement.setInt(3, topic_id);
			preparedStatement.setString(4, location);
			preparedStatement.setInt(5, user_id);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				userRank.setRank(resultSet.getInt("RANK"));
				userRank.setTotal_ranks(resultSet.getInt("TOTAL_RANKS"));
				double subjectRank=(double)resultSet.getInt("RANK")/resultSet.getInt("TOTAL_RANKS");
				DecimalFormat noOfDecimals = new DecimalFormat("#0.00");
				userRank.setSubject_percentile(Double.parseDouble(noOfDecimals.format(100-(subjectRank*100))));
			}
			System.out.println("rank location wise"+userRank.getRank()+"/"+userRank.getTotal_ranks()+":"+userRank.getSubject_percentile());
		
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return userRank;
	}

	@Override
	public SubjectAnalysisBean getUserSubjectWiseAnalysis(int user_id,
			int standard) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		SubjectAnalysisBean analysisBean=new SubjectAnalysisBean();
		try {
			
			String query="SELECT * FROM(SELECT USER_ID,FIRST_NAME,LAST_NAME,MATHS_POINTS,PHYSICS_POINTS,CHEMISTRY_POINTS,"
					+"FIND_IN_SET( MATHS_POINTS,( SELECT GROUP_CONCAT( MATHS_POINTS ORDER BY MATHS_POINTS DESC ) FROM user where STANDARD=?)) AS MATHS_RANK,"
					+"FIND_IN_SET( PHYSICS_POINTS,( SELECT GROUP_CONCAT( PHYSICS_POINTS ORDER BY PHYSICS_POINTS DESC ) FROM user where STANDARD=?)) AS PHYSICS_RANK,"
					+"FIND_IN_SET( CHEMISTRY_POINTS,( SELECT GROUP_CONCAT( CHEMISTRY_POINTS ORDER BY CHEMISTRY_POINTS DESC ) FROM user where STANDARD=?)) AS CHEMISTRY_RANK,"
					+"(SELECT COUNT(*)*2 FROM user where STANDARD=?) AS TOTAL_RANKS FROM user WHERE STANDARD=?)x WHERE USER_ID=?";
			
			System.out.println(query);
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, standard);
			preparedStatement.setInt(2, standard);
			preparedStatement.setInt(3, standard);
			preparedStatement.setInt(4, standard);
			preparedStatement.setInt(5, standard);
			preparedStatement.setInt(6, user_id);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				analysisBean.setUser_id(resultSet.getInt("USER_ID"));
				analysisBean.setFirst_name(resultSet.getString("FIRST_NAME"));
				analysisBean.setLast_name(resultSet.getString("LAST_NAME"));
				analysisBean.setMaths_points(resultSet.getInt("MATHS_POINTS"));
				analysisBean.setPhysics_points(resultSet.getInt("PHYSICS_POINTS"));
				analysisBean.setChemistry_points(resultSet.getInt("CHEMISTRY_POINTS"));
				analysisBean.setMaths_rank(resultSet.getInt("MATHS_RANK"));
				analysisBean.setPhysics_rank(resultSet.getInt("PHYSICS_RANK"));
				analysisBean.setChemistry_rank(resultSet.getInt("CHEMISTRY_RANK"));
				analysisBean.setTotal_ranks(resultSet.getInt("TOTAL_RANKS"));
				double mathsRank=(double)resultSet.getInt("MATHS_RANK")/resultSet.getInt("TOTAL_RANKS");
				double physicsRank=(double)resultSet.getInt("PHYSICS_RANK")/resultSet.getInt("TOTAL_RANKS");
				double chemistryRank=(double)resultSet.getInt("CHEMISTRY_RANK")/resultSet.getInt("TOTAL_RANKS");
				DecimalFormat noOfDecimals = new DecimalFormat("#0.00");
				analysisBean.setMaths_percentile(Double.parseDouble(noOfDecimals.format(100-(mathsRank*100))));
				analysisBean.setPhysics_percentile(Double.parseDouble(noOfDecimals.format(100-(physicsRank*100))));
				analysisBean.setChemistry_percentile(Double.parseDouble(noOfDecimals.format(100-(chemistryRank*100))));
			}
			
		
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return analysisBean;
	}

	@Override
	public SubjectAnalysisBean getUserSubjectWiseAnalysisByLocation(
			int user_id, int standard, String locationType, String location)
			throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		SubjectAnalysisBean analysisBean=new SubjectAnalysisBean();
		try {
			
			String query="SELECT * FROM(SELECT USER_ID,FIRST_NAME,LAST_NAME,MATHS_POINTS,PHYSICS_POINTS,CHEMISTRY_POINTS,"
					+"FIND_IN_SET( MATHS_POINTS,( SELECT GROUP_CONCAT( MATHS_POINTS ORDER BY MATHS_POINTS DESC ) FROM user where "+locationType+"=? AND STANDARD=?)) AS MATHS_RANK,"
					+"FIND_IN_SET( PHYSICS_POINTS,( SELECT GROUP_CONCAT( PHYSICS_POINTS ORDER BY PHYSICS_POINTS DESC ) FROM user where "+locationType+"=? AND STANDARD=?)) AS PHYSICS_RANK,"
					+"FIND_IN_SET( CHEMISTRY_POINTS,( SELECT GROUP_CONCAT( CHEMISTRY_POINTS ORDER BY CHEMISTRY_POINTS DESC ) FROM user where "+locationType+"=? AND STANDARD=?)) AS CHEMISTRY_RANK,"
					+"(SELECT COUNT(*)*2 FROM user where "+locationType+"=? AND STANDARD=?) AS TOTAL_RANKS FROM user WHERE STANDARD=?)x WHERE USER_ID=?";
			
			System.out.println(query);
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, location);
			preparedStatement.setInt(2, standard);
			preparedStatement.setString(3, location);
			preparedStatement.setInt(4, standard);
			preparedStatement.setString(5, location);
			preparedStatement.setInt(6, standard);
			preparedStatement.setString(7, location);
			preparedStatement.setInt(8, standard);
			preparedStatement.setInt(9, standard);
			preparedStatement.setInt(10, user_id);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				analysisBean.setUser_id(resultSet.getInt("USER_ID"));
				analysisBean.setFirst_name(resultSet.getString("FIRST_NAME"));
				analysisBean.setLast_name(resultSet.getString("LAST_NAME"));
				analysisBean.setMaths_points(resultSet.getInt("MATHS_POINTS"));
				analysisBean.setPhysics_points(resultSet.getInt("PHYSICS_POINTS"));
				analysisBean.setChemistry_points(resultSet.getInt("CHEMISTRY_POINTS"));
				analysisBean.setMaths_rank(resultSet.getInt("MATHS_RANK"));
				analysisBean.setPhysics_rank(resultSet.getInt("PHYSICS_RANK"));
				analysisBean.setChemistry_rank(resultSet.getInt("CHEMISTRY_RANK"));
				analysisBean.setTotal_ranks(resultSet.getInt("TOTAL_RANKS"));
				double mathsRank=(double)resultSet.getInt("MATHS_RANK")/resultSet.getInt("TOTAL_RANKS");
				double physicsRank=(double)resultSet.getInt("PHYSICS_RANK")/resultSet.getInt("TOTAL_RANKS");
				double chemistryRank=(double)resultSet.getInt("CHEMISTRY_RANK")/resultSet.getInt("TOTAL_RANKS");
				DecimalFormat noOfDecimals = new DecimalFormat("#0.00");
				analysisBean.setMaths_percentile(Double.parseDouble(noOfDecimals.format(100-(mathsRank*100))));
				analysisBean.setPhysics_percentile(Double.parseDouble(noOfDecimals.format(100-(physicsRank*100))));
				analysisBean.setChemistry_percentile(Double.parseDouble(noOfDecimals.format(100-(chemistryRank*100))));
				
					
			}
			
		
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return analysisBean;
	}
	
	@Override
	public List<TestsTopicList> getTestTopicsByCategory(int userid, String category,
			int division,int test_category_id) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<TestsTopicList> topicLists = new ArrayList<TestsTopicList>();

		try {
			String query = "SELECT * FROM ENGG_TOPICS WHERE TEST_DATE <='"
					+ GroomUtil.getCurrentDate() + "' AND DIVISION=? AND TEST_CATEGORY_ID=?";

			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, division);
			preparedStatement.setInt(2, test_category_id);
			resultSet = preparedStatement.executeQuery();

			java.util.Date currentDate = new java.util.Date(GroomUtil
					.getCurrentDate().getTime());
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			currentDate = dateFormat.parse(dateFormat.format(currentDate));
			while (resultSet.next()) {

				TestsTopicList topic = new TestsTopicList();
				topic.setTopicId(resultSet.getInt("TOPIC_ID"));
				topic.setTopicName(resultSet.getString("TOPIC_NAME"));
				topic.setTopicClass(resultSet.getInt("TOPIC_CLASS"));
				topic.setTestDate(resultSet.getDate("TEST_DATE").toString());
				// System.out.println(resultSet.getDate("TEST_DATE"));
				java.util.Date testDate = new java.util.Date(resultSet.getDate(
						"TEST_DATE").getTime());
				testDate = dateFormat.parse(dateFormat.format(testDate));
				/*
				 * System.out.println(testDate+":::"+currentDate);
				 * System.out.println(testDate.before(currentDate));
				 * System.out.println(testDate.equals(currentDate));
				 */
				if (testDate.compareTo(currentDate) > 0
						|| testDate.compareTo(currentDate) == 0) {
					topic.setIsKeyAndResultAvailable("NO");
				} else
					topic.setIsKeyAndResultAvailable("YES");
				String pointsQuery = "SELECT * FROM " + category
						+ "_TEST_POINTS WHERE USER_ID=? AND TOPIC_ID=?";
				preparedStatement = connection.prepareStatement(pointsQuery);
				preparedStatement.setInt(1, userid);
				preparedStatement.setInt(2, resultSet.getInt("TOPIC_ID"));
				ResultSet userPointsResultSet = preparedStatement
						.executeQuery();
				if (userPointsResultSet.next()) {
					topic.setIsStudentAttempted("YES");
					topic.setQuestionIdsList(userPointsResultSet
							.getString("QUESTION_IDS"));
				} else {
					topic.setIsStudentAttempted("NO");
				}
				topicLists.add(topic);
			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} catch (ParseException exception) {
			exception.printStackTrace();
		}

		finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}

		return topicLists;
	}
	
	@Override
	public List<TestsTopicList> getTestTopicsByBoard(int userid, String category, int standard,
			int division) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String subjectName=category;
		List<TestsTopicList> topicLists = new ArrayList<TestsTopicList>();

		try {
			String query = "SELECT * FROM " + category
					+ "_TOPICS WHERE TOPIC_CLASS=? AND TEST_DATE <='"
					+ GroomUtil.getCurrentDate() + "' AND DIVISION=? AND TEST_CATEGORY_ID=?";

			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, standard);
			preparedStatement.setInt(2, division);
			
			if(subjectName.equalsIgnoreCase("Maths")) {
				preparedStatement.setInt(3, 4);
			}
			if(subjectName.equalsIgnoreCase("Science")) {
				preparedStatement.setInt(3, 8);
			}
			if(subjectName.equalsIgnoreCase("Social")) {
				preparedStatement.setInt(3, 9);
			}
			
			resultSet = preparedStatement.executeQuery();

			java.util.Date currentDate = new java.util.Date(GroomUtil
					.getCurrentDate().getTime());
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			currentDate = dateFormat.parse(dateFormat.format(currentDate));
			while (resultSet.next()) {

				TestsTopicList topic = new TestsTopicList();
				topic.setTopicId(resultSet.getInt("TOPIC_ID"));
				topic.setTopicName(resultSet.getString("TOPIC_NAME"));
				topic.setTopicClass(resultSet.getInt("TOPIC_CLASS"));
				topic.setTestDate(resultSet.getDate("TEST_DATE").toString());
				// System.out.println(resultSet.getDate("TEST_DATE"));
				java.util.Date testDate = new java.util.Date(resultSet.getDate(
						"TEST_DATE").getTime());
				testDate = dateFormat.parse(dateFormat.format(testDate));
				/*
				 * System.out.println(testDate+":::"+currentDate);
				 * System.out.println(testDate.before(currentDate));
				 * System.out.println(testDate.equals(currentDate));
				 */
				if (testDate.compareTo(currentDate) > 0
						|| testDate.compareTo(currentDate) == 0) {
					topic.setIsKeyAndResultAvailable("NO");
				} else
					topic.setIsKeyAndResultAvailable("YES");
				String pointsQuery = "SELECT * FROM " + category
						+ "_TEST_POINTS WHERE USER_ID=? AND TOPIC_ID=?";
				preparedStatement = connection.prepareStatement(pointsQuery);
				preparedStatement.setInt(1, userid);
				preparedStatement.setInt(2, resultSet.getInt("TOPIC_ID"));
				ResultSet userPointsResultSet = preparedStatement
						.executeQuery();
				if (userPointsResultSet.next()) {
					topic.setIsStudentAttempted("YES");
					topic.setQuestionIdsList(userPointsResultSet
							.getString("QUESTION_IDS"));
				} else {
					topic.setIsStudentAttempted("NO");
				}
				topicLists.add(topic);
			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} catch (ParseException exception) {
			exception.printStackTrace();
		}

		finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}

		return topicLists;
	}
	
	
	@Override
	public List<TestsTopicList> getSampleTestTopics(int userid, String category,
			int test_category_id, int standard) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<TestsTopicList> topicLists = new ArrayList<TestsTopicList>();

		try {
			String query = "SELECT * FROM ENGG_TOPICS WHERE TEST_DATE <='"
					+ GroomUtil.getCurrentDate() + "' AND TOPIC_CLASS=? AND TEST_CATEGORY_ID=?";

			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, standard);
			preparedStatement.setInt(2, test_category_id);
			resultSet = preparedStatement.executeQuery();

			java.util.Date currentDate = new java.util.Date(GroomUtil
					.getCurrentDate().getTime());
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			currentDate = dateFormat.parse(dateFormat.format(currentDate));
			while (resultSet.next()) {

				TestsTopicList topic = new TestsTopicList();
				topic.setTopicId(resultSet.getInt("TOPIC_ID"));
				topic.setTopicName(resultSet.getString("TOPIC_NAME"));
				topic.setTopicClass(resultSet.getInt("TOPIC_CLASS"));
				topic.setTestDate(resultSet.getDate("TEST_DATE").toString());
				// System.out.println(resultSet.getDate("TEST_DATE"));
				java.util.Date testDate = new java.util.Date(resultSet.getDate(
						"TEST_DATE").getTime());
				testDate = dateFormat.parse(dateFormat.format(testDate));
				/*
				 * System.out.println(testDate+":::"+currentDate);
				 * System.out.println(testDate.before(currentDate));
				 * System.out.println(testDate.equals(currentDate));
				 */
				if (testDate.compareTo(currentDate) > 0
						|| testDate.compareTo(currentDate) == 0) {
					topic.setIsKeyAndResultAvailable("NO");
				} else
					topic.setIsKeyAndResultAvailable("YES");
				String pointsQuery = "SELECT * FROM " + category
						+ "_TEST_POINTS WHERE USER_ID=? AND TOPIC_ID=?";
				preparedStatement = connection.prepareStatement(pointsQuery);
				preparedStatement.setInt(1, userid);
				preparedStatement.setInt(2, resultSet.getInt("TOPIC_ID"));
				ResultSet userPointsResultSet = preparedStatement
						.executeQuery();
				if (userPointsResultSet.next()) {
					topic.setIsStudentAttempted("YES");
					topic.setQuestionIdsList(userPointsResultSet
							.getString("QUESTION_IDS"));
				} else {
					topic.setIsStudentAttempted("NO");
				}
				topicLists.add(topic);
			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} catch (ParseException exception) {
			exception.printStackTrace();
		}

		finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}

		return topicLists;
	}
	
	public int getQuizDivision(String category, int topicid) throws SQLException {
		int div = 0;

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();
			ps = conn
					.prepareStatement("SELECT DIVISION FROM "+ category +"_TOPICS WHERE TOPIC_ID=?");
			ps.setInt(1, topicid);
			rs = ps.executeQuery();
			while (rs.next())
				div = rs.getInt(1);
		} finally {
			if (ps != null) {
				ps.close();
			}
			if (rs != null)
				rs.close();
			if (conn != null)
				conn.close();
		}
		return Integer.valueOf(div);
	}

}
