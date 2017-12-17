package com.groom.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.groom.bean.Article;
import com.groom.service.ArticleService;
import com.groom.service.impl.ArticleServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage(value = "default")
@Action(value = "show-articles", results = { @Result(name = "success", location = "/jsp/blog.jsp") })
public class ShowArticlesAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	ArticleService articleService = new ArticleServiceImpl();

	private List<Article> articleList;

	public List<Article> getArticleList() {
		return articleList;
	}

	public void setArticleList(List<Article> articleList) {
		this.articleList = articleList;
	}

	public String execute() throws Exception {

		setArticleList(articleService.getAllArticles());

		return SUCCESS;
	}

}
