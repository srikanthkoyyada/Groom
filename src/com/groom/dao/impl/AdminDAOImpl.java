package com.groom.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.groom.bean.QuizQuestionDetails;
import com.groom.bean.Shine;
import com.groom.bean.Video;
import com.groom.dao.AdminDAO;
import com.groom.dao.BaseDAO;

public class AdminDAOImpl extends BaseDAO implements AdminDAO {

	@Override
	public boolean addSubjectTopic(String subject, String topicName, int standard, Date testDate, int test_category_id,
			String test_by, int test_time) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;

		try {
			String query = "INSERT INTO " + subject
					+ "_TOPICS(TOPIC_NAME,TOPIC_CLASS,TEST_DATE,TEST_CATEGORY_ID,TEST_BY,TEST_TIME) VALUES(?,?,?,?,?,?)";
			System.out.println(query);
			preparedStatement = connection.prepareStatement(query);

			preparedStatement.setString(1, topicName);
			preparedStatement.setInt(2, standard);
			preparedStatement.setDate(3, testDate);
			preparedStatement.setInt(4, test_category_id);
			preparedStatement.setString(5, test_by);
			preparedStatement.setInt(6, test_time);
			int status = preparedStatement.executeUpdate();
			if (status == 1)
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
	public HashMap<Integer, String> getTopics(String subject) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		HashMap<Integer, String> map = new HashMap<Integer, String>();
		try {
			String query = "SELECT * FROM " + subject + "_TOPICS";
			System.out.println(query);
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				map.put(resultSet.getInt("TOPIC_ID"), resultSet.getString("TOPIC_NAME"));
			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {

			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return map;
	}

	@Override
	public HashMap<Integer, String> getTopicsByStandard(String subject, int standard, int division)
			throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		HashMap<Integer, String> map = new HashMap<Integer, String>();
		try {
			String query = "SELECT * FROM " + subject + "_TOPICS WHERE TOPIC_CLASS=? AND DIVISION=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, standard);
			preparedStatement.setInt(2, division);
			System.out.println(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				map.put(resultSet.getInt("TOPIC_ID"), resultSet.getString("TOPIC_NAME"));
			}
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {

			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return map;
	}

	@Override
	public HashMap<String, String> getCategoryByStandard(int standard) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		HashMap<String, String> map = new HashMap<String, String>();
		try {
			String query = "SELECT * FROM CLASS_CATEGORY WHERE CATEGORY_CLASS=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, standard);
			System.out.println(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				map.put(resultSet.getString("CATEGORY_NAME"), resultSet.getString("CATEGORY_VALUE"));
			}
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {

			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return map;
	}

	@Override
	public int getMaxID(String subject) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int maxid = 0;
		try {
			String query = "SELECT MAX(Q_ID) FROM " + subject;
			System.out.println(query);
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				maxid = resultSet.getInt(1);
			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {

			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return maxid;
	}

	public boolean saveQuestion(QuizQuestionDetails questionDetails, String subject,String user) throws SQLException {
		  Connection connection = ds.getConnection();
		     PreparedStatement preparedStatement = null;
		     try
		     {
		        String query = "INSERT INTO " + 
		          subject + 
		          "(QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER,TOPIC_ID,Q_IMAGE_NAME,Q_EXPLANATION,CREATED_ON,CREATED_BY) VALUES(?,?,?,?,?,?,?,?,?,CURRENT_TIMESTAMP,?)";
		        System.out.println(query);
		        preparedStatement = connection.prepareStatement(query);
		 
		        preparedStatement.setString(1, questionDetails.getQuestion());
		        preparedStatement.setString(2, questionDetails.getOption_a());
		        preparedStatement.setString(3, questionDetails.getOption_b());
		        preparedStatement.setString(4, questionDetails.getOption_c());
		        preparedStatement.setString(5, questionDetails.getOption_d());
		        preparedStatement.setString(6, questionDetails.getAnswer());
		        preparedStatement.setInt(7, questionDetails.getTopicid());
		        preparedStatement.setString(8, questionDetails.getImage_name());
		        preparedStatement.setString(9, questionDetails.getExplanation());
		        preparedStatement.setString(10, user);
		 
		 
		        int status = preparedStatement.executeUpdate();
		        if (status == 1)
		          return true;
		     } catch (SQLException exception) {
		      exception.printStackTrace();
		     }
		     finally {
		       if (preparedStatement != null)
		          preparedStatement.close();
		       if (connection != null) {
		         connection.close();
		       }
		     }
		     if (preparedStatement != null)
		       preparedStatement.close();
		     if (connection != null) {
		       connection.close();
		     }
		      return false;
	}

	@Override
	public List<String> getShineResultNames() throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> names = new ArrayList<String>();
		try {
			String query = "SELECT NAME FROM SHINE WHERE NAME IS NOT NULL";

			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				names.add(resultSet.getString("NAME"));
			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {

			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return names;
	}

	@Override
	public Shine getUserResults(int standard, String school_code, String roll_number) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		Shine result = new Shine();
		try {
			String query = "SELECT * FROM SHINE WHERE CLASS=? AND ROLL_NUMBER=? AND SCHOOL_CODE=? AND ROLL_NUMBER IS NOT NULL AND SCHOOL_CODE IS NOT NULL";

			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, standard);
			preparedStatement.setString(2, roll_number);
			preparedStatement.setString(3, school_code);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				result.setName(resultSet.getString("NAME"));
				result.setStandard(resultSet.getInt("CLASS"));
				result.setRool_number(resultSet.getString("ROLL_NUMBER"));
				result.setMa_right(resultSet.getInt("MA_Right"));
				result.setMa_ua(resultSet.getInt("MA_UA"));
				result.setMa_wrong(resultSet.getInt("MA_Wrong"));
				result.setB_right(resultSet.getInt("B_Right"));
				result.setB_ua(resultSet.getInt("B_UA"));
				result.setB_wrong(resultSet.getInt("B_Wrong"));
				result.setM_right(resultSet.getInt("M_Right"));
				result.setM_ua(resultSet.getInt("M_UA"));
				result.setM_wrong(resultSet.getInt("M_Wrong"));
				result.setPc_right(resultSet.getInt("PC_Right"));
				result.setPc_ua(resultSet.getInt("PC_UA"));
				result.setPc_wrong(resultSet.getInt("PC_Wrong"));
				result.setTotal_right(resultSet.getInt("Total_Right"));
				result.setTotal_ua(resultSet.getInt("Total_UA"));
				result.setTotal_wrong(resultSet.getInt("Total_Wrong"));
				result.setTotal_score(resultSet.getInt("Total_Score"));
			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {

			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return result;
	}

	@Override
	public HashMap<Integer, String> getTestCategories() throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		HashMap<Integer, String> categories = new HashMap<Integer, String>();
		try {
			String query = "SELECT * FROM TEST_CATEGORY";

			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				categories.put(resultSet.getInt("CATEGORY_ID"), resultSet.getString("CATEGORY_NAME"));
			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {

			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return categories;
	}

	public boolean saveVideoURL(int standard, String subject, String title, String description, String url)
			throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;

		try {
			String query = "INSERT INTO VIDEOS_INFO (STANDARD,SUBJECT,TITLE,DESCRIPTION,URL) VALUES(?,?,?,?,?)";
			System.out.println(query);
			preparedStatement = connection.prepareStatement(query);

			preparedStatement.setInt(1, standard);
			preparedStatement.setString(2, subject);
			preparedStatement.setString(3, title);
			preparedStatement.setString(4, description);
			preparedStatement.setString(5, url);
			int status = preparedStatement.executeUpdate();
			if (status == 1)
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
	public List<Video> getAllVideos() throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<Video> videos = new ArrayList<Video>();
		try {
			String query = "SELECT * FROM VIDEOS_INFO";
			preparedStatement = connection.prepareStatement(query);

			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Video video = new Video();

				video.setId(resultSet.getInt("ID"));
				video.setStandard(resultSet.getInt("STANDARD"));
				video.setSubject(resultSet.getString("SUBJECT"));
				video.setTitle(resultSet.getString("TITLE"));
				video.setDescription(resultSet.getString("DESCRIPTION"));
				video.setUrl(resultSet.getString("URL"));
				videos.add(video);

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
		return videos;
	}

	@Override
	public Video getVideoById(int id) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		Video video = new Video();
		try {
			String query = "SELECT * FROM VIDEOS_INFO WHERE ID=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {

				video.setId(resultSet.getInt("ID"));
				video.setStandard(resultSet.getInt("STANDARD"));
				video.setSubject(resultSet.getString("SUBJECT"));
				video.setTitle(resultSet.getString("TITLE"));
				video.setDescription(resultSet.getString("DESCRIPTION"));
				video.setUrl(resultSet.getString("URL"));

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
		return video;
	}

	@Override
	public List<Video> getAllVideosBySubject(String subject) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<Video> videos = new ArrayList<Video>();
		try {
			String query = "SELECT * FROM VIDEOS_INFO WHERE SUBJECT=? ORDER BY ID DESC";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, subject);

			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Video video = new Video();

				video.setId(resultSet.getInt("ID"));
				video.setStandard(resultSet.getInt("STANDARD"));
				video.setSubject(resultSet.getString("SUBJECT"));
				video.setTitle(resultSet.getString("TITLE"));
				video.setDescription(resultSet.getString("DESCRIPTION"));
				video.setUrl(resultSet.getString("URL"));
				videos.add(video);

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
		return videos;
	}

	@Override
	public List<Video> getAllVideosByStandard(int standard) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<Video> videos = new ArrayList<Video>();
		try {
			String query = "SELECT * FROM VIDEOS_INFO WHERE STANDARD=? ORDER BY ID DESC";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, standard);

			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Video video = new Video();

				video.setId(resultSet.getInt("ID"));
				video.setStandard(resultSet.getInt("STANDARD"));
				video.setSubject(resultSet.getString("SUBJECT"));
				video.setTitle(resultSet.getString("TITLE"));
				video.setDescription(resultSet.getString("DESCRIPTION"));
				video.setUrl(resultSet.getString("URL"));
				videos.add(video);

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
		return videos;
	}

	@Override
	public List<Video> getAllVideosByStandardAndSubject(int standard, String subject) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		System.out.println("before 2 check " + subject);
		System.out.println("before 2 check " + standard);
		List<Video> videos = new ArrayList<Video>();
		try {
			if (standard != 0 && subject != null) {
				String query = "SELECT * FROM VIDEOS_INFO WHERE STANDARD=? AND SUBJECT=? ORDER BY ID DESC";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setInt(1, standard);
				preparedStatement.setString(2, subject);
				System.out.println("2 check " + subject);
				System.out.println("2 check " + standard);
			}
			if (standard == 0 && subject != null) {
				String query = "SELECT * FROM VIDEOS_INFO WHERE SUBJECT=? ORDER BY ID DESC";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, subject);
			}
			if (standard != 0 && subject == null) {
				String query = "SELECT * FROM VIDEOS_INFO WHERE STANDARD=? ORDER BY ID DESC";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setInt(1, standard);
			}

			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Video video = new Video();

				video.setId(resultSet.getInt("ID"));
				video.setStandard(resultSet.getInt("STANDARD"));
				video.setSubject(resultSet.getString("SUBJECT"));
				video.setTitle(resultSet.getString("TITLE"));
				video.setDescription(resultSet.getString("DESCRIPTION"));
				video.setUrl(resultSet.getString("URL"));
				videos.add(video);

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
		return videos;
	}

	public Integer getNoofQuestions(String category, int topicId) throws SQLException {
		int noOfQues = 0;

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement("SELECT COUNT(*) FROM " + category + " WHERE TOPIC_ID=? GROUP BY TOPIC_ID");
			ps.setInt(1, topicId);
			System.out.println("Query :" + ps);
			rs = ps.executeQuery();
			while (rs.next())
				noOfQues = rs.getInt(1);
			System.out.println("No of Question : " + noOfQues);
		} finally {
			if (ps != null) {
				ps.close();
			}
			if (rs != null)
				rs.close();
			if (conn != null)
				conn.close();
		}
		return Integer.valueOf(noOfQues);
	}

	@Override
	public boolean validateAdmin(String username, String password) throws SQLException {

		boolean is_admin_exist = false;

		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;

		try

		{

			String query = "select * from admin_user where username=? and password=?";

			preparedStatement = connection.prepareStatement(query);

			preparedStatement.setString(1, username);

			preparedStatement.setString(2, password);
			ResultSet resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {

				is_admin_exist = true;
			}

		}

		catch (SQLException exception)

		{

			is_admin_exist = false;

		} finally {
			if (preparedStatement != null)

				preparedStatement.close();

			if (connection != null)

				connection.close();
		}

		return is_admin_exist;

	}

	@Override
	public boolean updateQuestion(QuizQuestionDetails questionDetails, String subject, String user)
			throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		try {
			String query = "update " + subject
					+ " set QUESTION=?,OPTION_A=?,OPTION_B=?,OPTION_C=?,OPTION_D=?,ANSWER=?,Q_EXPLANATION=?,CREATED_BY=? where q_id=?";
			System.out.println(query);

			preparedStatement = connection.prepareStatement(query);

			preparedStatement.setString(1, questionDetails.getQuestion());
			preparedStatement.setString(2, questionDetails.getOption_a());
			preparedStatement.setString(3, questionDetails.getOption_b());
			preparedStatement.setString(4, questionDetails.getOption_c());
			preparedStatement.setString(5, questionDetails.getOption_d());
			preparedStatement.setString(6, questionDetails.getAnswer());

			preparedStatement.setString(7, questionDetails.getExplanation());
			preparedStatement.setString(8, user);
			preparedStatement.setInt(9, questionDetails.getQ_id());

			int status = preparedStatement.executeUpdate();
			if (status == 1)
				return true;
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null) {
				connection.close();
			}
		}
		
		return false;
	}

}
