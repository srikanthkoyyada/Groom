package com.groom.service.impl;

import java.sql.SQLException;

import com.groom.bean.User;
import com.groom.bean.UserActivation;
import com.groom.dao.MiscDAO;
import com.groom.dao.impl.MiscDAOImpl;
import com.groom.service.MiscService;
import com.groom.service.UserService;

public class MiscServiceImpl implements MiscService {

	MiscDAO dao = new MiscDAOImpl();
	
	@Override
	public int addprodigy(String username, String teamname, String school,
			String teamdetails, String city, String email, String phone,
			String theme, String title, String idea)
			throws SQLException {
		// TODO Auto-generated method stub
		return dao.addprodigy(username, teamname, school, teamdetails, city, email, phone, theme, title, idea);
	}

	@Override
	public boolean voteProdigyEntry(String votinguser, int id) throws SQLException {
		// TODO Auto-generated method stub
		return dao.voteProdigyEntry(votinguser, id);
	}

}
