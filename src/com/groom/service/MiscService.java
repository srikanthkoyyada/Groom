package com.groom.service;

import java.sql.SQLException;

import com.groom.bean.User;
import com.groom.bean.UserActivation;

public interface MiscService {

	public int addprodigy(String username, String teamname, String school,
			String teamdetails, String city, String email, String phone,
			String theme, String title, String idea) throws SQLException;

	public boolean voteProdigyEntry(String votinguser, int id) throws SQLException;
}
