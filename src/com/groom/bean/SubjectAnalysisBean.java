package com.groom.bean;

import java.io.Serializable;

public class SubjectAnalysisBean implements Serializable {


	private static final long serialVersionUID = 1L;
	
	private int user_id;
	private String first_name;
	private String last_name;
	private int maths_points;
	private int physics_points;
	private int chemistry_points;
	private int maths_rank;
	private int physics_rank;
	private int chemistry_rank;
	private int total_ranks;
	private double physics_percentile;
	private double maths_percentile;
	private double chemistry_percentile;
	
	
	
	
	public double getPhysics_percentile() {
		return physics_percentile;
	}
	public void setPhysics_percentile(double physics_percentile) {
		this.physics_percentile = physics_percentile;
	}
	public double getMaths_percentile() {
		return maths_percentile;
	}
	public void setMaths_percentile(double maths_percentile) {
		this.maths_percentile = maths_percentile;
	}
	public double getChemistry_percentile() {
		return chemistry_percentile;
	}
	public void setChemistry_percentile(double chemistry_percentile) {
		this.chemistry_percentile = chemistry_percentile;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public int getMaths_points() {
		return maths_points;
	}
	public void setMaths_points(int maths_points) {
		this.maths_points = maths_points;
	}
	public int getPhysics_points() {
		return physics_points;
	}
	public void setPhysics_points(int physics_points) {
		this.physics_points = physics_points;
	}
	public int getChemistry_points() {
		return chemistry_points;
	}
	public void setChemistry_points(int chemistry_points) {
		this.chemistry_points = chemistry_points;
	}
	public int getMaths_rank() {
		return maths_rank;
	}
	public void setMaths_rank(int maths_rank) {
		this.maths_rank = maths_rank;
	}
	public int getPhysics_rank() {
		return physics_rank;
	}
	public void setPhysics_rank(int physics_rank) {
		this.physics_rank = physics_rank;
	}
	public int getChemistry_rank() {
		return chemistry_rank;
	}
	public void setChemistry_rank(int chemistry_rank) {
		this.chemistry_rank = chemistry_rank;
	}
	public int getTotal_ranks() {
		return total_ranks;
	}
	public void setTotal_ranks(int total_ranks) {
		this.total_ranks = total_ranks;
	}
	
	
}
