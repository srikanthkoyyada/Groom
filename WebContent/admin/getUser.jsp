<%@page import="com.groom.dao.impl.UserDAOImpl"%>
<%@page import="com.groom.dao.UserDAO"%>
<%@page import="com.groom.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String usermail = request.getParameter("email");
	//String mail=usermail.substring(0, usermail.indexOf("@"));
	UserDAO userDAO = new UserDAOImpl();
	User user = userDAO.getUserDetails(usermail);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>Ultimate guide to improving understanding and marks |
	GROOM4More.com | For the true champion in every student</title>
<!-- Description, Keywords and Author -->
<meta name="description"
	content="MyPower.in helps students in the form of career guidance, skills improvement, showcasing of skills to a global audience and giving them access to experts from various fields. It is ideal for Engineering, MBA, MCA, M.Tech, B.Sc, B.Com, B.Pharmacy students" />
<meta name="keywords"
	content="My, Mypower, My power, GRE, GATE, CAT, Job, Software, MS in US, MBA in US, MS in UK, Singapore, australia, newzealand" />
<meta name="author" content="MyPower.in">
<meta name="robots" content="index, follow" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

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

			<h2 class="page-section-title">User Details</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<section class="page-content wrap">
			<div class="container">
				<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div class="pull-right">
								<form id="filter-form" action="#" method="post">
								
									<input name="email" class="col-md-8" id="email" placeholder="Type Email Here"/>
									<input type="submit" class="btn btn-sm btn-success col-md-3 col-md-offset-1"
										value="Search" id="filter-submit">
								</form>
							</div>
							<p>&nbsp;</p>
							<table class="table table-bordered">
								<tr>
									<td><b>User name</b></td>
									<td><%=user.getUsername()%></td>
								</tr>
								<tr>
									<td><b>Password</b></td>
									<td><%=user.getPassword() %></td>
								</tr>
								<tr>
									<td><b>Email</b></td>
									<td><%=user.getMail() %></td>
								</tr>
								<tr>
									<td><b>School/College</b></td>
									<td><%=user.getSchool() %></td>
								</tr>
								 <tr>
									<td><b>City</b></td>
									<td><%=user.getCity() %></td>
								</tr>
								<tr>
									<td><b>State</b></td>
									<td><%=user.getState() %></td>
								</tr>								
								<tr>
									<td><b>Phone</b></td>
									<td>
										<%-- <% if(user.getPhone()!=null && !user.getPhone().isEmpty()) { %> --%>
											<%=user.getMobile() %>
										<%-- <% } else { %>
										<form id="phone-form" action="#">
											<input name="phone" class="col-md-6" id="phone" placeholder="Phone Number"/>
											<input type="submit" class="btn btn-sm btn-success col-md-3 col-md-offset-1" value="Submit" id="phone-submit">
										</form>
										<% } %> --%>
									</td>
								</tr>
							</table>
						</div>
					</div>
			</div>
			<!-- container-->
		</section>
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