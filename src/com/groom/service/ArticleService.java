package com.groom.service;

import java.sql.SQLException;
import java.util.List;

import com.groom.bean.Article;

public interface ArticleService {

	public List<Article> getAllArticles() throws SQLException;
	
	public Article getArticle(int articleid) throws SQLException;
	
	public boolean updateArticleViewsCount(int articleid) throws SQLException;

}
