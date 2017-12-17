package com.groom.service.impl;

import java.sql.SQLException;

import com.groom.bean.User;
import com.groom.bean.UserActivation;
import com.groom.dao.UserDAO;
import com.groom.dao.impl.UserDAOImpl;
import com.groom.service.UserService;

public class UserServiceImpl implements UserService {

	UserDAO dao = new UserDAOImpl();

	@Override
	public boolean validateUser(User user) throws SQLException {
		return dao.validateUser(user);
	}

	@Override
	public int registerUser(User user) throws SQLException {

		return dao.registerUser(user);
	}

	@Override
	public String isUsernameAvailable(String username) throws SQLException {
		// TODO Auto-generated method stub
		if (dao.isUsernameExist(username)) {
			return "NO";
		} else
			return "YES";
	}

	@Override
	public String isMailAvailable(String mail) throws SQLException {
		if (dao.isMailExist(mail)) {
			return "NO";
		} else
			return "YES";
	}

	@Override
	public String isPhoneNumberAvailable(String phone) throws SQLException {
		if (dao.isPhoneNumberExist(phone)) {
			return "NO";
		} else
			return "YES";
	}

	@Override
	public User getUserDetails(String username) throws SQLException {
		// TODO Auto-generated method stub
		return dao.getUserDetails(username);
	}

	@Override
	public User getUserForgotPwdDetails(String userNameMail) throws SQLException {
		// TODO Auto-generated method stub
		return dao.getUserForgotPwdDetails(userNameMail);
	}

	@Override
	public User getUserDetails(int userid) throws SQLException {
		// TODO Auto-generated method stub
		return dao.getUserDetails(userid);
	}

	@Override
	public boolean saveUserActivationRecord(UserActivation userActivation)
			throws SQLException {
		// TODO Auto-generated method stub
		return dao.saveUserActivationRecord(userActivation);
	}

	@Override
	public boolean activateUser(String aCode) throws SQLException {
		// TODO Auto-generated method stub
		return dao.activateUser(aCode);
	}

	@Override
	public boolean updateUserSubjectPoints(String subject, int userid,
			int points) throws SQLException {
		// TODO Auto-generated method stub
		return dao.updateUserSubjectPoints(subject, userid, points);
	}

	@Override
	public boolean updateUserTotalPoints(int userid, int points)
			throws SQLException {
		// TODO Auto-generated method stub
		return dao.updateUserTotalPoints(userid, points);
	}
	
	@Override
	public int addprodigy(String username, String teamname, String school,
			String teamdetails, String city, String email, String phone,
			String theme, String idea)
			throws SQLException {
		// TODO Auto-generated method stub
		return dao.addprodigy(username, teamname, school, teamdetails, city, email, phone, theme, idea);
	}

}
