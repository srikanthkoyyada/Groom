package com.groom.actions;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.groom.bean.Article;
import com.groom.service.ArticleService;
import com.groom.service.impl.ArticleServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage(value = "default")
@Action(value = "show-article-content", results = { @Result(name = "success", location = "/jsp/blog-article-content.jsp") })
public class ShowArticleContentAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	ArticleService articleService = new ArticleServiceImpl();

	private Article article;

	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public String execute() throws Exception {
		
		articleService.updateArticleViewsCount(Integer.parseInt(getId()));
		setArticle(articleService.getArticle(Integer.parseInt(getId())));

		return SUCCESS;
	}

}
