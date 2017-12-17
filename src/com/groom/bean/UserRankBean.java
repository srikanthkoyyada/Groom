package com.groom.bean;

import java.io.Serializable;

public class UserRankBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int user_id;
	private int points;
	private int rank;
	private int total_ranks;
	private double subject_percentile;
	
	public double getSubject_percentile() {
		return subject_percentile;
	}

	public void setSubject_percentile(double subject_percentile) {
		this.subject_percentile = subject_percentile;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public int getTotal_ranks() {
		return total_ranks;
	}

	public void setTotal_ranks(int total_ranks) {
		this.total_ranks = total_ranks;
	}

}
