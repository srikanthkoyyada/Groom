package com.groom.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.groom.bean.ProdigyBean;
import com.groom.bean.User;
import com.groom.bean.UserActivation;
import com.groom.dao.BaseDAO;
import com.groom.dao.MiscDAO;
import com.groom.util.GroomUtil;
import com.groom.bean.ProdigyBean;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

public class MiscDAOImpl extends BaseDAO implements MiscDAO {

	@Override
	public int addprodigy(String username, String teamname, String school, String teamdetails, 
			String city, String email, String phone, String theme, String title, String idea) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int id = 0;
		try {
			String query = "INSERT INTO PRODIGIES(USER_NAME,TEAM_NAME,SCHOOL,TEAM_DETAILS,CITY,EMAIL,PHONE,THEME,TITLE,YOUR_IDEA, SUBMISSION_DATE) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, teamname);
			preparedStatement.setString(3, school);
			preparedStatement.setString(4, teamdetails);
			preparedStatement.setString(5, city);
			preparedStatement.setString(6, email);
			preparedStatement.setString(7, phone);
			preparedStatement.setString(8, theme);
			preparedStatement.setString(9, title);
			preparedStatement.setString(10, idea);
			preparedStatement.setDate(11, GroomUtil.getCurrentDate());
			

			if (preparedStatement.executeUpdate() == 1) {
				preparedStatement = connection
						.prepareStatement("SELECT LAST_INSERT_ID()");
				resultSet = preparedStatement.executeQuery();
				resultSet.next();
				id = resultSet.getInt(1);
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
		return id;
	}
	
	public ProdigyBean getProdigyContent(int id) throws SQLException {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		ProdigyBean bean = new ProdigyBean();
		try {
			connection = ds.getConnection();
			String query = "SELECT * FROM PRODIGIES WHERE ID=?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, id);
			resultSet = statement.executeQuery();

			while (resultSet.next()) {
				bean.setId(resultSet.getInt("ID"));
				bean.setUsername(resultSet.getString("USER_NAME"));
				bean.setTeamname(resultSet.getString("TEAM_NAME"));
				bean.setSchoolname(resultSet.getString("SCHOOL"));
				bean.setTeamdetails(resultSet.getString("TEAM_DETAILS"));
				bean.setCity(resultSet.getString("CITY"));
				bean.setEmail(resultSet.getString("EMAIL"));
				bean.setPhone(resultSet.getString("PHONE"));
				bean.setTheme(resultSet.getString("THEME"));
				bean.setTitle(resultSet.getString("TITLE"));
				bean.setYouridea(resultSet.getString("YOUR_IDEA"));
				bean.setNo_of_views(resultSet.getInt("NO_OF_VIEWS"));
				bean.setNo_of_votes(resultSet.getInt("NO_OF_VOTES"));
				bean.setPostedDate(resultSet.getDate("SUBMISSION_DATE"));
			}

			resultSet.close();
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (connection != null) {
				connection.close();
			}
		}
		return bean;
	}
	
	
	@SuppressWarnings("resource")
	@Override
	public boolean voteProdigyEntry(String votinguser, int id) throws SQLException {
		Connection conn = null;
		PreparedStatement preparedStatement = null;
		PreparedStatement updateps = null;
		int updcnt=0;
		String date=null;
		try {
			conn = ds.getConnection();
			String selectQuery = "SELECT DATE_OF_LIKE FROM VALIDATE_LIKES WHERE USER_NAME=? AND ID=?";
			preparedStatement = conn.prepareStatement(selectQuery);
			preparedStatement.setString(1, votinguser);
			preparedStatement.setInt(2, id);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				date = resultSet.getDate(1).toString();
				System.out.println(resultSet.getDate(1).toString());
				System.out.println(GroomUtil.getCurrentDate().toString());
			}
			if (resultSet.getDate(1).toString() != GroomUtil.getCurrentDate().toString()) {
				String query = "UPDATE PRODIGIES SET NO_OF_VOTES=NO_OF_VOTES+1 WHERE ID=?";
				preparedStatement = conn.prepareStatement(query);
				preparedStatement.setInt(1, id);
				int status=0;
				status = preparedStatement.executeUpdate();
				String query1 = "INSERT INTO VALIDATE_LIKES(USER_NAME, ID, DATE_OF_LIKE) VALUES(?,?,?)";
				preparedStatement = conn.prepareStatement(query1);
				preparedStatement.setString(1, votinguser);
				preparedStatement.setInt(2, id);
				preparedStatement.setDate(3, GroomUtil.getCurrentDate());
				updcnt = preparedStatement.executeUpdate();
				return true;
			} else {
				return false;
				}
			} finally {
			if (preparedStatement != null)
				preparedStatement.close();
			if (updateps != null)
				updateps.close();
			if (conn != null)
				conn.close();
		}
		
	}
	
	public boolean isProdigyExist(int id) throws SQLException {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = ds.getConnection();
			String query = "SELECT * FROM PRODIGIES WHERE ID=?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, id);
			resultSet = statement.executeQuery();
			return (resultSet.next());
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (connection != null)
				connection.close();
		}
		return false;
	}	
	
	@Override
	public boolean isUserSubscribed(String username, String type) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			String query = "SELECT * FROM EXAM_SUBSCRIPTION WHERE USER_NAME=? AND (" + type + "=1 OR ALLTESTS=1)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, username);
			//preparedStatement.setInt(2, 1);
			//preparedStatement.setInt(3, 1);
			
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
	public boolean isUserSubscribedForType(String username, String type) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			String query = "SELECT * FROM EXAM_SUBSCRIPTION WHERE USER_NAME=? AND " + type + "=1";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, username);
			//preparedStatement.setInt(2, 1);
			//preparedStatement.setInt(3, 1);
			
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

}
