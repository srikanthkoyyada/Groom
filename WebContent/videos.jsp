<%@page import="com.groom.dao.AdminDAO"%>
<%@page import="com.groom.dao.impl.AdminDAOImpl"%>
<%@page import="com.groom.bean.Video"%>
<%@page import="com.groom.util.GroomUtil"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
						<div Class="row">							
							<form id="filter-form" action="#" method="post">
								<div class="select col-md-3 col-md-offset-1">
									<select id="standard" name="standard">
										<option value="">Select Standard</option>
										<option value="3">Three</option>
										<option value="4">Four</option>
										<option value="5">Five</option>
										<option value="6">Six</option>
										<option value="7">Seven</option>
										<option value="8">Eight</option>
										<option value="9">Nine</option>
										<option value="10">Ten</option>
										<option value="11">Eleven</option>
										<option value="12">Twelve</option>										
									</select>
								</div>
								<div class="select col-md-3 col-md-offset-1">
									<select id ="subject" name ="subject">
										<option value="">Select Subject</option>
										<option value ="maths">mathematics</option>
										<option value ="Physics">Physics</option>
										<option value ="Chemistry">Chemistry</option>
										<option value="Natural Sciences">Natural Sciences</option>
										<option value ="Social">Social</option>
										<option value ="GK">GK</option>
										<option value ="Inspiration">Inspiration</option>
									</select>
								</div>
								<input type="submit" class="btn btn-xs btn-success col-md-2 col-md-offset-1" value="GET VIDEOS" id="filter-submit">
							</form>
						</div>
						<hr>
						<div class="row">
							<% if(request.getParameter("subject")!=null && Integer.parseInt(request.getParameter("standard"))!=0) {
								AdminDAO dao = new AdminDAOImpl();
								String subject= request.getParameter("subject");
								int standard = Integer.parseInt(request.getParameter("standard"));
								List<Video> list = dao.getAllVideosByStandardAndSubject(standard, subject);
								
									for(Video  bean: list) { %>							
									<div class="clearfix margin-b32">
		
										<div class="date-meta">
											<%=bean.getSubject() %>
										</div>
										<!-- end date-meta -->
		
										<div class="blog-title">
		
											<h4>										
												<a href="<%=request.getContextPath()%>/videos/video.jsp?id=<%=bean.getId() %>">
													<%=bean.getTitle() %>
												</a>
											</h4>
		
											<p><%=bean.getDescription() %>
		
										</div>
										<!--  blog-title -->
		
									</div>
									<!--  clearfix -->							
		
									<div class="blog-button">
										<a href="<%=request.getContextPath()%>/videos/video.jsp?id=<%=bean.getId() %>" class="btn-color">
											See Video</a>
									</div>
									<hr>
								<% } } %>
						
						
						
							<%
								if(Integer.parseInt(request.getParameter("standard"))==0 && request.getParameter("subject")!=null) {
									AdminDAO dao = new AdminDAOImpl();
									String subject= request.getParameter("subject");
									List<Video> list = dao.getAllVideosBySubject(subject);
								
										for(Video  bean: list) { %>							
										<div class="clearfix margin-b32">
			
											<div class="date-meta">
												<%=bean.getSubject() %>
											</div>
											<!-- end date-meta -->
			
											<div class="blog-title">
			
												<h4>										
													<a href="<%=request.getContextPath()%>/videos/video.jsp?id=<%=bean.getId() %>">
														<%=bean.getTitle() %>
													</a>
												</h4>
			
												<p><%=bean.getDescription() %>
			
											</div>
											<!--  blog-title -->
			
										</div>
										<!--  clearfix -->							
			
										<div class="blog-button">
											<a href="<%=request.getContextPath()%>/videos/video.jsp?id=<%=bean.getId() %>" class="btn-color">
												See Video</a>
										</div>
										<hr>
								<% } } %>
								
							<% if(Integer.parseInt(request.getParameter("standard"))!=0 && request.getParameter("subject")==null) {
								AdminDAO dao = new AdminDAOImpl();
								int standard = Integer.parseInt(request.getParameter("standard"));
								List<Video> list = dao.getAllVideosByStandard(standard);
								
									for(Video  bean: list) { %>							
									<div class="clearfix margin-b32">
		
										<div class="date-meta">
											<%=bean.getSubject() %>
										</div>
										<!-- end date-meta -->
		
										<div class="blog-title">
		
											<h4>										
												<a href="<%=request.getContextPath()%>/videos/video.jsp?id=<%=bean.getId() %>">
													<%=bean.getTitle() %>
												</a>
											</h4>
		
											<p><%=bean.getDescription() %></p>
		
										</div>
										<!--  blog-title -->
		
									</div>
									<!--  clearfix -->							
		
									<div class="blog-button">
										<a href="<%=request.getContextPath()%>/videos/video.jsp?id=<%=bean.getId() %>" class="btn-color">
											See Video</a>
									</div>
									<hr>
									<% } } %>
								
								
							</div>
						</article>
						<!-- blog-post-->						

					</div>
					<!-- col-md-8-->

					<div class="col-sm-5 col-md-4">
						<aside>
							<ul>
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