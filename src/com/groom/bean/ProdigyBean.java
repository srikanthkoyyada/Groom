
package com.groom.bean;

import java.sql.Date;

public class ProdigyBean {
	private int Id;
	private String username;
	private String teamname;
	private String schoolname;
	private String teamdetails;
	private String city;
	private String email;
	private String phone;
	private String theme;
	private String title;
	private String youridea;
	private int no_of_votes;
	private int no_of_views;
	private Date postedDate;
	
	
	public int getId() {
		return this.Id;
	}

	public void setId(int id) {
		this.Id = id;
	}
	
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getTeamname() {
		return teamname;
	}

	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}

	public String getSchoolname() {
		return schoolname;
	}

	public void setSchoolname(String schoolname) {
		this.schoolname = schoolname;
	}

	public String getTeamdetails() {
		return teamdetails;
	}

	public void setTeamdetails(String teamdetails) {
		this.teamdetails = teamdetails;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getYouridea() {
		return youridea;
	}

	public void setYouridea(String youridea) {
		this.youridea = youridea;
	}

	public int getNo_of_votes() {
		return no_of_votes;
	}

	public void setNo_of_votes(int no_of_votes) {
		this.no_of_votes = no_of_votes;
	}

	public int getNo_of_views() {
		return no_of_views;
	}

	public void setNo_of_views(int no_of_views) {
		this.no_of_views = no_of_views;
	}

	public Date getPostedDate() {
		return postedDate;
	}

	public void setPostedDate(Date postedDate) {
		this.postedDate = postedDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
}