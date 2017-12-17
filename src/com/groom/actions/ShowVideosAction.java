package com.groom.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.groom.bean.Article;
import com.groom.bean.Video;
import com.groom.dao.AdminDAO;
import com.groom.dao.impl.AdminDAOImpl;
import com.groom.service.AdminService;
import com.groom.service.ArticleService;
import com.groom.service.impl.AdminServiceImpl;
import com.groom.service.impl.ArticleServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage(value = "default")
@Action(value = "show-videos", results = { @Result(name = "success", location = "/jsp/blog.jsp") })
public class ShowVideosAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	AdminDAO adminDAO = new AdminDAOImpl();

	private List<Video> videosList;

	public List<Video> getArticleList() {
		return videosList;
	}

	public void setVideoList(List<Video> videosList) {
		this.videosList = videosList;
	}

	public String execute() throws Exception {

		setVideoList(adminDAO.getAllVideos());

		return SUCCESS;
	}

}
