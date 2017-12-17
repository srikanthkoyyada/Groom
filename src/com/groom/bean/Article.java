package com.groom.bean;

import java.io.Serializable;

public class Article implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int articleid;
	private String article_title;
	private String article_text;
	private String article_date;
	private int no_of_views;
	private String user;
	private String tags;
	
	

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public int getArticleid() {
		return articleid;
	}

	public void setArticleid(int articleid) {
		this.articleid = articleid;
	}

	public String getArticle_title() {
		return article_title;
	}

	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}

	public String getArticle_text() {
		return article_text;
	}

	public void setArticle_text(String article_text) {
		this.article_text = article_text;
	}

	

	public String getArticle_date() {
		return article_date;
	}

	public void setArticle_date(String article_date) {
		this.article_date = article_date;
	}

	public int getNo_of_views() {
		return no_of_views;
	}

	public void setNo_of_views(int no_of_views) {
		this.no_of_views = no_of_views;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

}
