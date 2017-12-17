package com.groom.dao;

import java.sql.SQLException;

import com.groom.bean.User;
import com.groom.bean.UserActivation;

public interface UserDAO {
	
	public boolean validateUser(User user) throws SQLException;
	
	public int registerUser(User user) throws SQLException;
	
	public boolean saveUserActivationRecord(UserActivation userActivation) throws SQLException;
	
	public boolean activateUser(String aCode) throws SQLException;
	
	public boolean isUsernameExist(String username) throws SQLException;
	
	public boolean isMailExist(String mail) throws SQLException;
	
	public boolean isPhoneNumberExist(String phone) throws SQLException;
	
	public User getUserDetails(String username) throws SQLException;
	
	public User getUserDetails(int userid) throws SQLException;
	
	public User getUserForgotPwdDetails(String userNameMail) throws SQLException;
	
	public boolean updateUserSubjectPoints(String subject,int userid,int points) throws SQLException;
	
	public boolean updateUserTotalPoints(int userid,int points) throws SQLException;

	public int addprodigy(String username, String teamname, String school,
			String teamdetails, String city, String email, String phone,
			String theme, String idea) throws SQLException;

	public abstract void incLoginCount(String username) throws SQLException;

	public boolean updateDetails(String mail, String phone, String username)
			throws SQLException;
	
}