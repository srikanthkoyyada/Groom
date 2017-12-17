package com.groom.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.groom.bean.Article;
import com.groom.dao.ArticleDAO;
import com.groom.dao.impl.ArticleDAOImpl;
import com.groom.service.ArticleService;

public class ArticleServiceImpl implements ArticleService {

	ArticleDAO dao = new ArticleDAOImpl();

	@Override
	public List<Article> getAllArticles() throws SQLException {
		return dao.getAllArticles();
	}

	@Override
	public Article getArticle(int articleid) throws SQLException {
		
		return dao.getArticle(articleid);
	}

	@Override
	public boolean updateArticleViewsCount(int articleid) throws SQLException {
		return dao.updateArticleViewsCount(articleid);
	}

}
