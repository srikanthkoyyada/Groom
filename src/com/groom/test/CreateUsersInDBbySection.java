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

public class CreateUsersInDBbySection {
	public int getRandomNumber(int min, int max) {
		return (int) Math.floor(Math.random() * (max - min + 1)) + min;
	}

	public static void main(String[] args) throws NamingException,
			ClassNotFoundException, SQLException {
		CreateUsersInDBbySection inDB = new CreateUsersInDBbySection();
		Set<Integer> integers = new HashSet<Integer>();
		HashMap<String, Integer> classNames=new HashMap<String, Integer>();
		
				
		classNames.put("5a", 5);
		classNames.put("5b", 5);		
		classNames.put("5c", 5);
		//classNames.put("5d", 5);	
		//classNames.put("5e", 5);
		//classNames.put("5f", 5);
		//classNames.put("5g", 5);		
		//classNames.put("5h", 5);
		//classNames.put("5i", 5);		
		//classNames.put("5j", 5);
		//classNames.put("5k", 5);
		//classNames.put("5l", 5);
		
		classNames.put("6a", 6);
		classNames.put("6b", 6);		
		classNames.put("6c", 6);
		//classNames.put("6d", 6);		
		//classNames.put("6e", 6);
		//classNames.put("6f", 6);
		//classNames.put("6g", 6);		
		//classNames.put("6h", 6);
		//classNames.put("6i", 6);		
		//classNames.put("6j", 6);
		//classNames.put("6k", 6);
		
		classNames.put("7a", 7);
		classNames.put("7b", 7);	
		classNames.put("7c", 7);
		//classNames.put("7d", 7);		
		//classNames.put("7e", 7);		
		//classNames.put("7f", 7);
		//classNames.put("7g", 7);
		//classNames.put("7h", 7);		
		//classNames.put("7i", 7);
		//classNames.put("7j", 7);		
		//classNames.put("7k", 7);		
		
		classNames.put("8a", 8);
		classNames.put("8b", 8);
		classNames.put("8c", 8);
		//classNames.put("8d", 8);		
		//classNames.put("8e", 8);
		//classNames.put("8f", 8);
		//classNames.put("8g", 8);		
		//classNames.put("8h", 8);
		//classNames.put("8i", 8);		
		//classNames.put("8j", 8);
		//classNames.put("8k", 8);
		
		classNames.put("9a", 9);
		classNames.put("9b", 9);		
		classNames.put("9c", 9);
		//classNames.put("9d", 9);		
		//classNames.put("9e", 9);
		//classNames.put("9f", 9);
		//classNames.put("9g", 9);		
		//classNames.put("9h", 9);
		//classNames.put("9i", 9);		
		//classNames.put("9j", 9);
		
		classNames.put("10a", 9);
		classNames.put("10b", 9);		
		classNames.put("10c", 9);
		//classNames.put("10d", 9);		
		//classNames.put("10e", 9);
		//classNames.put("10f", 9);
		//classNames.put("10g", 9);		
		//classNames.put("10h", 9);
		//classNames.put("10i", 9);		
		
		
		String usercode = "sprse";
		HashMap<String, Integer> classAndStrength = new HashMap<String, Integer>();
		
				
		classAndStrength.put("5a", 36);
		classAndStrength.put("5b", 36);
		classAndStrength.put("5c", 35);
		//classAndStrength.put("5d", 41);
		//classAndStrength.put("5e", 41);
		//classAndStrength.put("5f", 40);
		//classAndStrength.put("5g", 41);
		//classAndStrength.put("5h", 35);
		//classAndStrength.put("5i", 36);
		//classAndStrength.put("5j", 35);
		//classAndStrength.put("5k", 36);
		//classAndStrength.put("5l", 36);*/
		
		classAndStrength.put("6a", 34);
		classAndStrength.put("6b", 41);
		classAndStrength.put("6c", 36);
		//classAndStrength.put("6d", 33);
		//classAndStrength.put("6e", 39);
		//classAndStrength.put("6f", 42);
		//classAndStrength.put("6g", 41);
		//classAndStrength.put("6h", 39);
		//classAndStrength.put("6i", 33);
		//classAndStrength.put("6j", 39);
		//classAndStrength.put("6k", 25);
		
		classAndStrength.put("7a", 34);
		classAndStrength.put("7b", 34);
		classAndStrength.put("7c", 34);
		//classAndStrength.put("7d", 36);
		//classAndStrength.put("7e", 42);
		//classAndStrength.put("7f", 38);
		//classAndStrength.put("7g", 41);
		//classAndStrength.put("7h", 38);
		//classAndStrength.put("7i", 44);
		//classAndStrength.put("7j", 40);
		//classAndStrength.put("7k", 38);
		
		classAndStrength.put("8a", 44);
		classAndStrength.put("8b", 46);
		classAndStrength.put("8c", 30);
		//classAndStrength.put("8d", 38);
		//classAndStrength.put("8e", 42);
		//classAndStrength.put("8f", 42);
		//classAndStrength.put("8g", 38);
		//classAndStrength.put("8h", 39);
		//classAndStrength.put("8i", 35);
		//classAndStrength.put("8j", 44);
		//classAndStrength.put("8k", 36);
		
		classAndStrength.put("9a", 44);
		classAndStrength.put("9b", 46);
		classAndStrength.put("9c", 22);
		//classAndStrength.put("9d", 39);
		//classAndStrength.put("9e", 40);
		//classAndStrength.put("9f", 35);
		//classAndStrength.put("9g", 38);*/
		//classAndStrength.put("9h", 35);
		//classAndStrength.put("9i", 39);
		//classAndStrength.put("9j", 39);
		
		classAndStrength.put("10a", 40);
		classAndStrength.put("10b", 42);
		classAndStrength.put("10c", 35);
		//classAndStrength.put("10d", 41);
		//classAndStrength.put("10e", 34);
		//classAndStrength.put("10f", 29);
		//classAndStrength.put("10g", 38);
		//classAndStrength.put("10h", 36);
		//classAndStrength.put("10i", 38);
 
		for (Map.Entry<String, Integer> entry : classAndStrength.entrySet()) {
			if (entry.getKey() != null) {
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
								+ ",sprse" + password[i] 
								+ "," + classNames.get(entry.getKey()) + "\n";
						ps.setString(
								1,
								String.format(usercode + entry.getKey()
										+ "%03d", i + 1));
						ps.setString(2, "sprse"+password[i].toString());
						//ps.setString(3, "null");
						//ps.setString(4, "null");
						//ps.setString(5, "null");
						//ps.setString(6, "null");
						ps.setString(3, "India");
						ps.setString(4, "Telangana");
						ps.setString(5, "Hyderabad");
						ps.setDate(6, GroomUtil.getCurrentDate());
						ps.setInt(7, classNames.get(entry.getKey()));
						//ps.setInt(7, 7);
						ps.setString(8, "SPR School of Excellence");
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
