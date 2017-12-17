<%@page import="com.groom.dao.AdminDAO"%>
<%@page import="com.groom.dao.impl.AdminDAOImpl"%>
<%@page import="com.groom.bean.Video"%>
<%@page import="com.groom.util.GroomUtil"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	
	AdminDAO dao = new AdminDAOImpl();
	//dao.saveProdigyVisit(id);
	List<Video> list = dao.getAllVideos();

	//int userid=userDetailsDAO.getUserId(bean.getUsername());
	//}
%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en-US">
<!--<![endif]-->
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">

<title>Videos at Groom4More.com | Groom4More</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]> <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> <![endif]-->

<link
	href='http://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900%7CPacifico'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/favicon.ico">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/extra.css" type="text/css"
	media="all" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap/css/bootstrap.min.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/style.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/js/prettyphoto/css/prettyPhoto.css"
	type="text/css" media="all" />

</head>

<body>


	<div id="main" class="wrap">

		<jsp:include page="/common/header.jsp"></jsp:include>

		<section class="page-top wrap">

			<h2 class="page-section-title">Videos List</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">

			<div class="container">

				<div class="row">

					<div class="col-sm-7 col-md-8">

						<article class="blog-post">
							<% for(Video bean:list) { %>

							<div class="clearfix margin-b32">

								<div class="date-meta">
									<%=bean.getSubject() %>
								</div>
								<!-- end date-meta -->

								<div class="blog-title">

									<h4>										
										<a href="<%=request.getContextPath()%>/admin/video.jsp?id=<%=bean.getId() %>"
											target="_blank">
											<%=bean.getTitle() %>
										</a>
									</h4>

									<p><%=bean.getDescription() %>

								</div>
								<!--  blog-title -->

							</div>
							<!--  clearfix -->							

							<div class="blog-button">
								<a href="<%=request.getContextPath()%>/admin/video.jsp?id=<%=bean.getId() %>" class="btn-color"
									target="_blank">See Video</a>
							</div>
							<hr>
							<% } %>
						</article>
						<!-- blog-post-->						

					</div>
					<!-- col-md-8-->

					<div class="col-sm-5 col-md-4">
						<aside>
							<ul>
								<li class="widget widget_text"><h5 class="widgettitle">Stay Updated</h5>
									<div class="textwidget">
										<p>Follow our blog to get the latest information about different events, tests, competitions and news
										that is useful for you. Keep coming back for the latest information.</p>
									</div></li>

								<li class="widget widget_categories"><h5
										class="widgettitle">Categories</h5>
									<ul>
										<li class="cat-item cat-item-17"><a href="#">News</a></li>
										<li class="cat-item cat-item-1"><a href="#">Tests</a>
										</li>
										<li class="cat-item cat-item-18"><a href="#">Competitions</a>
										</li>
										<li class="cat-item cat-item-19"><a href="#">Material</a>
										</li>
									</ul></li>

								<li class="widget widget_recent_entries">
									<h5 class="widgettitle">Recent Articles</h5>
									<ul>
										<li><a href="<%=request.getContextPath()%>/jsp/prodigy/prodigies.jsp">PRODIGIES - Identifying Future Leaders</a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/prodigy/prodigies-form.jsp">PRODIGIES - Round #1 submission</a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/about/schools.jsp">Helping Schools through analysis</a></li>

									</ul>
								</li>

								<li class="widget widget_archive"><h5 class="widgettitle">Archives</h5>
									<ul>
										<li><a href='#'>September 2016</a></li>
										<li><a href='#'>October 2016</a></li>
										<li><a href='#'>November 2016</a></li>
									</ul></li>

								<li class="widget widget_tag_cloud"><h5 class="widgettitle">Tags</h5>
									<div class="tagcloud">
										<a href='#' class='tag-link-14' title='2 topics'
											style='font-size: 14px;'>kids</a> <a href='#'
											class='tag-link-7' title='1 topic' style='font-size: 14px;'>prizes</a>
										<a href='#' class='tag-link-10' title='2 topics'
											style='font-size: 14px;'>education</a> <a href='#'
											class='tag-link-13' title='1 topic' style='font-size: 14px;'>points</a>
										<a href='#' class='tag-link-11' title='1 topic'
											style='font-size: 14px;'>tests</a> <a href='#'
											class='tag-link-8' title='1 topic' style='font-size: 14px;'>competitions</a>
										<a href='#' class='tag-link-12' title='2 topics'
											style='font-size: 14px;'>videos</a> <a href='#'
											class='tag-link-16' title='2 topics' style='font-size: 14px;'>prodigy</a>
										<a href='#' class='tag-link-9' title='4 topics'
											style='font-size: 14px;'>material</a> <a href='#'
											class='tag-link-15' title='1 topic' style='font-size: 14px;'>books</a>
									</div></li>

							</ul>

						</aside>
					</div>
					<!--.col-md-4-->

				</div>
				<!-- row -->

			</div>
			<!-- container-->

		</div>
		<!-- page-content-->

		<div class="zz-top-foo"></div>

		<jsp:include page="/common/footer.jsp"></jsp:include>		

	</div>
	<!-- main -->

	<div class="scrollup">
		<a class="scrolltop" href="#"> <i class="fa fa-chevron-up"></i>
		</a>
	</div>


	<script type='text/javascript'
		src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/css/bootstrap/js/bootstrap.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.easing.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.flexslider-min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/prettyphoto/js/jquery.prettyPhoto.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.form.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/init.js'></script>

</body>
</html>
