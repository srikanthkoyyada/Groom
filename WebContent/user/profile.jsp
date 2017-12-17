<%@page import="com.groom.dao.UserDAO"%>
<%@page import="com.groom.dao.impl.UserDAOImpl"%>
<%@page import="com.groom.bean.User"%>
<%@page import="com.groom.service.UserService"%>
<%@page import="com.groom.service.impl.UserServiceImpl"%>
<%@page import="com.groom.bean.User"%>
<%@page import="com.groom.util.GroomUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	User user = (User) session.getAttribute("user");
	//if(session.getAttribute("user")!=null){	
	//User user = (User) session.getAttribute("user");
	UserService userService = new UserServiceImpl();

	UserDAO dao = new UserDAOImpl();
	//dao.saveProdigyVisit(id);
	User bean = dao.getUserDetails("groom7");

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

<title>User Profile | Groom4More</title>

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
<style>
.comm-field, #msg-contact {
	width: 100%; {
	width: 100%;
	padding: 8px;
	margin-top: 8px;
	border: 1px solid #e5e5e5;
	background: #f5f5f5;
	color: #707070;
}
</style>
</head>

<body>


	<div id="main" class="wrap">

		<jsp:include page="/common/header.jsp"></jsp:include>

		<section class="page-top wrap">

			<h2 class="page-section-title">user Entry</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">

			<div class="container">

				<div class="row">

					<div class="col-sm-7 col-md-8">

						<article class="single-blog-post">
							<table class="table table-user-information">
								<tbody>
									<tr>
										<td>Full Name</td>
										<td><%=bean.getFirstname() %> <%=bean.getLastname() %></td>
									</tr>
									<tr>
										<td>Username</td>
										<td><%=bean.getUsername()%>06/23/2013</td>
									</tr>
									<tr>
										<td>Class</td>
										<td><%=bean.getStandard() %></td>
									</tr>
									<tr>
										<td>Gender</td>
										<td>Female</td>
									</tr>
									<tr>
										<td>Mobile</td>
										<td><%=bean.getMobile() %></td>
									</tr>
									<tr>
										<td>Email</td>
										<td><%=bean.getMail() %></td>
									</tr>
									<tr>
										<td>City</td>
										<td><%=bean.getCity() %></td>
									</tr>

								</tbody>
							</table>
							

						</article>
						<!-- blog-post-->

					</div>
					<!-- col-md-8-->

					<div class="col-sm-5 col-md-4">
						<aside>

							<ul>

								<li class="widget widget_text"><h5 class="widgettitle">Future
										Leaders</h5>
									<div class="textwidget">
										<p align="justify">PRODIGIES is an attempt to bring out
											the leader in every student. Each team has an opportunity to
											address a problem and provide a solution that can make the
											world a better place.</p>
									</div></li>

								<!-- li class="widget widget_categories"><h5
										class="widgettitle">Mentors</h5>
									<ul>
										<li class="cat-item cat-item-17"><a href="#">Shubha
												Srinivas</a></li>
										<li class="cat-item cat-item-1"><a href="#">Venkat
												Reddy</a></li>
										<li class="cat-item cat-item-18"><a href="#">Rakesh
												Dubbudu</a></li>
										<li class="cat-item cat-item-19"><a href="#">Venkat
												Sureddy</a></li>
									</ul></li -->

								<li class="widget widget_recent_entries">
									<h5 class="widgettitle">Recent Ideas</h5>
									<ul>
										<li><a href="#">Involving students in school
												maintenance</a></li>
										<li><a href="#">Seva hubs in the city</a></li>
										<li><a href="#">Tuition Points in slums</a></li>
										<li><a href="#">Motion detectors to save electricity</a>
										</li>

									</ul>
								</li>

								<li class="widget widget_archive"><h5 class="widgettitle">Top
										Schools so far</h5>
									<ul>
										<li><a href='#'>Vikas the Concept School</a></li>
										<li><a href='#'>Oakridge International School</a></li>
										<li><a href='#'>Sanskriti the School</a></li>
									</ul></li>

								<li class="widget widget_tag_cloud"><h5 class="widgettitle">Tags</h5>
									<div class="tagcloud">
										<a href='#' class='tag-link-14' title='2 topics'
											style='font-size: 14px;'>kids</a> <a href='#'
											class='tag-link-7' title='1 topic' style='font-size: 14px;'>games</a>
										<a href='#' class='tag-link-10' title='2 topics'
											style='font-size: 14px;'>bike</a> <a href='#'
											class='tag-link-13' title='1 topic' style='font-size: 14px;'>play</a>
										<a href='#' class='tag-link-11' title='1 topic'
											style='font-size: 14px;'>drawing</a> <a href='#'
											class='tag-link-8' title='1 topic' style='font-size: 14px;'>activity</a>
										<a href='#' class='tag-link-12' title='2 topics'
											style='font-size: 14px;'>learn</a> <a href='#'
											class='tag-link-16' title='2 topics' style='font-size: 14px;'>music</a>
										<a href='#' class='tag-link-9' title='4 topics'
											style='font-size: 14px;'>club</a> <a href='#'
											class='tag-link-15' title='1 topic' style='font-size: 14px;'>book</a>
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