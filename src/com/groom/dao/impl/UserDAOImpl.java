package com.groom.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.groom.bean.User;
import com.groom.bean.UserActivation;
import com.groom.dao.BaseDAO;
import com.groom.dao.UserDAO;
import com.groom.util.GroomUtil;
import com.groom.dao.impl.UserDAOImpl;

public class UserDAOImpl extends BaseDAO implements UserDAO {

	@Override
	public boolean validateUser(User user) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			String query = "SELECT ACTIVE FROM USER WHERE USER_NAME=? AND PASSWORD=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, user.getUsername());
			//preparedStatement.setString(2, GroomUtil.getEncryptedPassword(user.getPassword()));
			preparedStatement.setString(2, user.getPassword());
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next())
				if (resultSet.getInt("ACTIVE") == 1)
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
	public int registerUser(User user) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int userid = 0;
		try {
			String query = "INSERT INTO USER(USER_NAME,PASSWORD,FIRST_NAME,LAST_NAME,MAIL,PHONE,COUNTRY,STATE,CITY,DATE_REGISTERED,STANDARD,SCHOOL,REFERRAL) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			//preparedStatement.setString(2,
					//GroomUtil.getEncryptedPassword(user.getPassword()));
			preparedStatement.setString(3, user.getFirstname());
			preparedStatement.setString(4, user.getLastname());
			preparedStatement.setString(5, user.getMail());
			preparedStatement.setString(6, user.getMobile());
			preparedStatement.setString(7, user.getCountry());
			preparedStatement.setString(8, user.getState());
			preparedStatement.setString(9, user.getCity());
			preparedStatement.setDate(10, GroomUtil.getCurrentDate());
			preparedStatement.setInt(11, Integer.parseInt(user.getStandard()));
			preparedStatement.setString(12, user.getSchool());
			preparedStatement.setString(13, user.getRefText());
			if (preparedStatement.executeUpdate() == 1) {
				preparedStatement = connection
						.prepareStatement("SELECT LAST_INSERT_ID()");
				resultSet = preparedStatement.executeQuery();
				resultSet.next();
				userid = resultSet.getInt(1);
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
		return userid;
	}

	@Override
	public boolean isUsernameExist(String username) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			String query = "SELECT * FROM USER WHERE USER_NAME=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, username);

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
	public boolean isMailExist(String mail) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			String query = "SELECT * FROM USER WHERE MAIL=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, mail);

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
	public boolean isPhoneNumberExist(String phone) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			String query = "SELECT * FROM USER WHERE PHONE=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, phone);

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
	public User getUserDetails(String username) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = new User();
		try {
			String query = "SELECT * FROM USER WHERE USER_NAME=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, username);

			resultSet = preparedStatement.executeQuery();
			resultSet.next();
			user.setCity(resultSet.getString("CITY"));
			user.setUsername(resultSet.getString("USER_NAME"));
			user.setPassword(resultSet.getString("PASSWORD"));
			user.setFirstname(resultSet.getString("FIRST_NAME"));
			user.setLastname(resultSet.getString("LAST_NAME"));
			user.setMail(resultSet.getString("MAIL"));
			user.setCountry(resultSet.getString("COUNTRY"));
			user.setState(resultSet.getString("STATE"));
			user.setUserId(resultSet.getInt("USER_ID"));
			user.setDate_registered(resultSet.getDate("DATE_REGISTERED"));
			user.setMobile(resultSet.getString("PHONE"));
			user.setStandard(String.valueOf(resultSet.getInt("STANDARD")));
			user.setSchool(resultSet.getString("SCHOOL"));

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
		return user;
	}

	@Override
	public User getUserForgotPwdDetails(String userNameMail)
			throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = new User();
		try {
			String query = "SELECT * FROM USER WHERE USER_NAME=? OR MAIL=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, userNameMail);
			preparedStatement.setString(2, userNameMail);

			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				user.setMail(resultSet.getString("MAIL"));
				user.setPassword(resultSet.getString("PASSWORD"));
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

		return user;
	}

	@Override
	public User getUserDetails(int userid) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = new User();
		try {
			String query = "SELECT * FROM USER WHERE USER_ID=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, userid);

			resultSet = preparedStatement.executeQuery();
			resultSet.next();
			user.setCity(resultSet.getString("CITY"));
			user.setUsername(resultSet.getString("USER_NAME"));
			user.setFirstname(resultSet.getString("FIRST_NAME"));
			user.setLastname(resultSet.getString("LAST_NAME"));
			user.setMail(resultSet.getString("MAIL"));
			user.setCountry(resultSet.getString("COUNTRY"));
			user.setState(resultSet.getString("STATE"));
			user.setUserId(resultSet.getInt("USER_ID"));
			user.setDate_registered(resultSet.getDate("DATE_REGISTERED"));
			user.setMobile(resultSet.getString("PHONE"));
			user.setStandard(String.valueOf(resultSet.getInt("STANDARD")));
			user.setSchool(resultSet.getString("SCHOOL"));

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
		return user;
	}

	@Override
	public boolean saveUserActivationRecord(UserActivation userActivation)
			throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			String query = "INSERT INTO USER_ACTIVATION(ACTIVATION_KEY,USER_ID) VALUES(?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, userActivation.getActivationKey());
			preparedStatement.setInt(2, userActivation.getUserId());

			if (preparedStatement.executeUpdate() == 1) {
				return true;
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
		return false;
	}

	@Override
	public boolean activateUser(String aCode) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int user_id = 0;
		try {
			String query = "SELECT USER_ID FROM USER_ACTIVATION WHERE ACTIVATION_KEY=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, aCode);

			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {

				user_id = resultSet.getInt("USER_ID");
				String updateQuery = "UPDATE USER SET ACTIVE=1  WHERE USER_ID=?";
				preparedStatement = connection.prepareStatement(updateQuery);
				preparedStatement.setInt(1, user_id);
				int userUpdateStatus = preparedStatement.executeUpdate();
				if (userUpdateStatus == 1) {
					String deleteQuery = "DELETE FROM USER_ACTIVATION WHERE ACTIVATION_KEY=?";
					preparedStatement = connection
							.prepareStatement(deleteQuery);
					preparedStatement.setString(1, aCode);
					int userActivationRecordDelteStatus = preparedStatement
							.executeUpdate();
					if (userActivationRecordDelteStatus == 1)
						return true;
					else
						return false;
				} else
					return false;
			} else
				return false;
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
	public boolean updateUserSubjectPoints(String subject, int userid,
			int points) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;

		try {
			String query = "UPDATE USER SET " + subject + "_POINTS=" + subject
					+ "_POINTS+? WHERE USER_ID=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, points);
			preparedStatement.setInt(2, userid);

			if (preparedStatement.executeUpdate() == 1) {
				return true;
			}
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
	public boolean updateUserTotalPoints(int userid, int points)
			throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;

		try {
			String query = "UPDATE USER SET TOTAL_POINTS=TOTAL_POINTS+? WHERE USER_ID=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, points);
			preparedStatement.setInt(2, userid);

			if (preparedStatement.executeUpdate() == 1) {
				return true;
			}
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
	public int addprodigy(String username, String teamname, String school, String teamdetails, 
			String city, String email, String phone, String theme, String idea) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int id = 0;
		try {
			String query = "INSERT INTO PRODIGIES(USER_NAME,TEAM_NAME,SCHOOL,TEAM_DETAILS,CITY,EMAIL,PHONE,THEME,YOUR_IDEA, SUBMISSION_DATE) VALUES(?,?,?,?,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, teamname);
			preparedStatement.setString(3, school);
			preparedStatement.setString(4, teamdetails);
			preparedStatement.setString(5, city);
			preparedStatement.setString(6, email);
			preparedStatement.setString(7, phone);
			preparedStatement.setString(8, theme);
			preparedStatement.setString(9, idea);
			preparedStatement.setDate(10, GroomUtil.getCurrentDate());
			

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
	
	public void incLoginCount(String username) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		System.out.println("Hit login count"+username);
		try {
			conn = ds.getConnection();

			ps = conn
					.prepareStatement("UPDATE USER SET LOGIN_CNT=LOGIN_CNT+1 WHERE USER_NAME=?");
			ps.setString(1, username);
			ps.executeUpdate();
		} finally {
			if (ps != null) {
				ps.close();
			}
			if (conn != null)
				conn.close();
		}
	}
	
	@Override
	public boolean updateDetails(String mail, String phone, String username) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;

		try {
			String query = "UPDATE USER SET MAIL=?, PHONE=? WHERE USER_NAME=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, mail);
			preparedStatement.setString(2, phone);
			preparedStatement.setString(3, username);

			if (preparedStatement.executeUpdate() == 1) {
				return true;
			}
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

}
