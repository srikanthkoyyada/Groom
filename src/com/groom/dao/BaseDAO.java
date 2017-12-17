package com.groom.dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BaseDAO {

	public static DataSource ds;

	static {
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");
			 ds = (DataSource) envCtx.lookup("jdbc/mydb");
			
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
}
