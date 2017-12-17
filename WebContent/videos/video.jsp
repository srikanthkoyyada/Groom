<%@page import="com.groom.dao.AdminDAO"%>
<%@page import="com.groom.dao.impl.AdminDAOImpl"%>
<%@page import="com.groom.bean.Video"%>
<%@page import="com.groom.util.GroomUtil"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	int id = Integer.parseInt((request.getParameter("id")));
	AdminDAO dao = new AdminDAOImpl();	
	Video bean= dao.getVideoById(id);

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

<title><%=bean.getTitle() %> | Groom4More</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="<%=bean.getDescription() %>">
<meta name="keywords" content="<%=bean.getTitle() %>, <%=bean.getSubject() %> videos, videos at groom4more">
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

			<h2 class="page-section-title"><%=bean.getTitle() %></h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
					<div class="col-sm-7 col-md-8">
						<article class="blog-post">
							<div class="clearfix margin-b32">
								<div class="blog-title">									
									<p><%=bean.getDescription() %>
									<div class="spcae-18"></div>
									<iframe src="<%=bean.getUrl() %>?rel=0&iv_load_policy=3" style="width: 100%; height: 400px;"></iframe>
								</div>
								<!--  blog-title -->

							</div>
							<!--  clearfix -->	
						</article>
						<!-- blog-post-->						

					</div>
					<!-- col-md-8-->

					<div class="col-sm-5 col-md-4">
						<aside>
							<a href="<%=request.getContextPath() %>/videos/videos.jsp"
								class="btn btn-info btn-block btn-lg">GO BACK TO VIDEOS HUB</a>
							<p>&nbsp;</p>
							<ul>
								<li class="widget widget_categories"><h5
										class="widgettitle">Related Videos</h5>
									<div>
										<%
											int standard = bean.getStandard();
											String subject = bean.getSubject();
											AdminDAO adminDAO = new AdminDAOImpl();
											adminDAO.getAllVideosByStandardAndSubject(standard, subject);
											List<Video> list = dao.getAllVideosByStandardAndSubject(standard, subject);
											for(Video  listbean: list) {
										%>
										<%
											String url = listbean.getUrl();
											String[] videoid = url.split("/");
											
										%>
										<div>
											<a
												href="<%=request.getContextPath() %>/videos/video.jsp?id=<%=listbean.getId() %>">
												<span class="col-md-12"
													style="border-bottom: 1px solid #CCC; padding-bottom: 10px; padding-top: 10px;">
													<span class="col-md-5"><img src="http://img.youtube.com/vi/<%=videoid[4] %>/0.jpg"
														style="width: 100%;"></span>
													<span class="col-md-7" style="font-size: 18px;">
														<%=listbean.getTitle() %><br>
														<small style="font-size: 12px;"><%=listbean.getDescription() %></small>
													</span>
												</span>
											</a><hr>
										</div>
										<% } %>
									</div>
								</li>
								
								<li class="widget widget_recent_entries">
									<p>&nbsp;</p>
									<h5 class="widgettitle">Recent Articles</h5>
									<ul>
										<li><a href="<%=request.getContextPath()%>/jsp/prodigy/prodigies.jsp">PRODIGIES - Identifying Future Leaders</a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/prodigy/prodigies-form.jsp">PRODIGIES - Round #1 submission</a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/about/schools.jsp">Helping Schools through analysis</a></li>

									</ul>
								</li>
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