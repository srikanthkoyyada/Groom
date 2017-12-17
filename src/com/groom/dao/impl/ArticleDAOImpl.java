package com.groom.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.groom.bean.Article;
import com.groom.dao.ArticleDAO;
import com.groom.dao.BaseDAO;

public class ArticleDAOImpl extends BaseDAO implements ArticleDAO {

	@Override
	public List<Article> getAllArticles() throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<Article> articles = new ArrayList<Article>();
		try {
			String query = "SELECT * FROM ARTICLE ORDER BY DATE_SUBMITTED DESC";
			preparedStatement = connection.prepareStatement(query);

			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Article article = new Article();

				article.setArticleid(resultSet.getInt("ARTICLE_ID"));
				article.setUser(resultSet.getString("USER"));
				article.setArticle_title(resultSet.getString("ARTICLE_TITLE"));
				article.setArticle_text(resultSet.getString("ARTICLE_TEXT").substring(0,220)+"......");
				Timestamp timestamp = resultSet.getTimestamp("DATE_SUBMITTED");
				String dateTime = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss")
						.format(timestamp);
				article.setArticle_date(dateTime);
				article.setNo_of_views(resultSet.getInt("NO_OF_VIEWS"));
				article.setTags(resultSet.getString("TAGS"));

				articles.add(article);

			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return articles;
	}

	@Override
	public Article getArticle(int articleid) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		Article article = new Article();
		try {
			String query = "SELECT * FROM ARTICLE WHERE ARTICLE_ID=? ORDER BY DATE_SUBMITTED DESC";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, articleid);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				

				article.setArticleid(resultSet.getInt("ARTICLE_ID"));
				article.setUser(resultSet.getString("USER"));
				article.setArticle_title(resultSet.getString("ARTICLE_TITLE"));
				article.setArticle_text(resultSet.getString("ARTICLE_TEXT"));
				Timestamp timestamp = resultSet.getTimestamp("DATE_SUBMITTED");
				String dateTime = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss")
						.format(timestamp);
				article.setArticle_date(dateTime);
				article.setNo_of_views(resultSet.getInt("NO_OF_VIEWS"));
				article.setTags(resultSet.getString("TAGS"));

				

			}

		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return article;
	}

	@Override
	public boolean updateArticleViewsCount(int articleid) throws SQLException {
		Connection connection = ds.getConnection();
		PreparedStatement preparedStatement = null;
		
		try {
			String query = "UPDATE ARTICLE SET NO_OF_VIEWS=NO_OF_VIEWS+1 WHERE ARTICLE_ID=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, articleid);
			int updateStatus=preparedStatement.executeUpdate();
			if(updateStatus==1){
				return true;
			}
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			
			if (preparedStatement != null)
				preparedStatement.close();
			if (connection != null)
				connection.close();
		}
		return false;
	}

}
