package com.groom.test;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.naming.NamingException;

import com.groom.util.GroomUtil;

public class CreateUsersInDB {
	public int getRandomNumber(int min, int max) {
		return (int) Math.floor(Math.random() * (max - min + 1)) + min;
	}

	public static void main(String[] args) throws NamingException,
			ClassNotFoundException, SQLException {
		CreateUsersInDB inDB = new CreateUsersInDB();
		Set<Integer> integers = new HashSet<Integer>();
		HashMap<Integer, Integer> classNames=new HashMap<Integer, Integer>();
		//classNames.put(1, "One");
		//classNames.put(2, "Two");
		classNames.put(3, 3);
		classNames.put(4, 4);
		classNames.put(5, 5);
		classNames.put(6, 6);
		classNames.put(7, 7);
		classNames.put(8, 8);
		classNames.put(9, 9);
		classNames.put(10, 10);
		String usercode = "gtsn";
		HashMap<Integer, Integer> classAndStrength = new HashMap<Integer, Integer>();
		//classAndStrength.put(1, 50);
		//classAndStrength.put(2, 50);
		classAndStrength.put(3, 59);
		classAndStrength.put(4, 46);
		classAndStrength.put(5, 46);
		classAndStrength.put(6, 45);
		classAndStrength.put(7, 33);
		classAndStrength.put(8, 41);
		classAndStrength.put(9, 33);
		classAndStrength.put(10, 32);
 
		for (Map.Entry<Integer, Integer> entry : classAndStrength.entrySet()) {
			if (entry.getKey() != 0) {
				for (int i = 0; i < 20000; i++) {
					int x = inDB.getRandomNumber(11111, 99999);
					integers.add(x);

				}

				ArrayList<String> usernamesList = new ArrayList<String>();
				Object[] password = new Object[entry.getValue()];
				password = integers.toArray();
				
				String connectionURL = "jdbc:mysql://97.74.228.170:3306/groomdb";
				Connection conn = null;

				// ResultSet rs = null;
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(connectionURL, "groomusr",
						"Bojja9977");
				PreparedStatement ps = conn
						.prepareStatement("INSERT INTO USER(USER_NAME,PASSWORD,COUNTRY,STATE,CITY,DATE_REGISTERED,STANDARD,SCHOOL,ACTIVE) VALUES(?,?,?,?,?,?,?,?,?)");
				FileOutputStream fileOutputStream = null;
				try {
					java.io.File file = new java.io.File(usercode
							+ entry.getKey() + ".csv");
					file.createNewFile();
					fileOutputStream = new FileOutputStream(file);

				} catch (FileNotFoundException exception) {
					exception.printStackTrace();
				} catch (Exception exception) {
					exception.printStackTrace();
				}

				try {
					String headings="USERNAME,PASSWORD,CLASS \n";
					fileOutputStream.write(headings.getBytes());
					
					for (int i = 0; i < entry.getValue(); i++) {
						
						usernamesList.add(String.format(
								usercode + entry.getKey() + "%03d", i + 1));
						String temp = String.format(usercode + entry.getKey()
								+ "%03d", i + 1)
								+ ",gtsn" + password[i] 
								+ "," + entry.getKey() + "\n";
						ps.setString(
								1,
								String.format(usercode + entry.getKey()
										+ "%03d", i + 1));
						ps.setString(2, "gtsn"+password[i].toString());
						//ps.setString(3, "null");
						//ps.setString(4, "null");
						//ps.setString(5, "null");
						//ps.setString(6, "null");
						ps.setString(3, "India");
						ps.setString(4, "Telangana");
						ps.setString(5, "Hyderabad");
						ps.setDate(6, GroomUtil.getCurrentDate());
						ps.setInt(7, entry.getKey());
						//ps.setInt(7, 7);
						ps.setString(8, "Greenfields e-Techno School, Narapally");
						ps.setInt(9, 1);
						ps.addBatch();

						fileOutputStream.write(temp.getBytes());
					}
					ps.executeBatch();
					

				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
		}
		System.out.println("DONE");
	}
	
}
