package com.groom.dao;

import java.sql.SQLException;

import com.groom.bean.User;
import com.groom.bean.UserActivation;
import com.groom.bean.ProdigyBean;

public interface MiscDAO {

	public int addprodigy(String username, String teamname, String school,
			String teamdetails, String city, String email, String phone,
			String theme, String title, String idea) throws SQLException;
	
	public abstract ProdigyBean getProdigyContent(int paramInt)
			throws SQLException;

	boolean voteProdigyEntry(String votinguser, int id) throws SQLException;
	
	public boolean isUserSubscribed(String username, String type) throws SQLException;

	public boolean isUserSubscribedForType(String username, String type) throws SQLException;
}
