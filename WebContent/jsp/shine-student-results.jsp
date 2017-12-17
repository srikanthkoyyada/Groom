<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shine Student Results | Groom4More</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="keywords"
	content="Iit online exams, Iit skill tests, Mathematics skill tests, Science skill tests, Mathematics Olympiad tests,
		National Science Olympiad tests, Online iit tests, Best Educational videos, Best science videos, Online maths tests, 
		Online mathematics tests, Online science tests, Online physics tests, Online iit maths exam, Online iit science exam">
<!-- Google font -->
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Raleway:300,400,700,900'
	rel='stylesheet' type='text/css'>
<!-- Css -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/library/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/library/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/library/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/md-font.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/images/ico/groom.ico" type="image/x-icon" />
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
</head>
<!--/head-->
<body id="page-top" class="home">
	<!-- PAGE WRAP -->
	<div id="page-wrap">
		<!-- HEADER -->
		<jsp:include page="/jsp/header.jsp"></jsp:include>
		<!-- END / HEADER -->

		<section class="sub-banner sub-banner-course">
			<div class="awe-static bg-sub-banner-course"></div>
			<div class="container">
				<div class="sub-banner-content">
					<h2 class="text-center">Shine Result- Search</h2>
				</div>
			</div>
		</section>
		<!-- END / SUB BANNER -->
		<!-- BLOG -->
			<section class="blog" style="min-height: 520px;">
			<div class="container">
				<div class="row">

					<!-- BLOG LIST -->
					<div class="col-md-8">
				
				<ul>
					<li><h4>Name : <s:property value="%{shine.name}" /></h4></li>
					<li><h4>Class : <s:property value="%{shine.standard}" /></h4></li>
					<li><h4>Roll Number : <s:property value="%{shine.rool_number}" /></h4></li>
				</ul>
				</div>
				<table class="table-condensed table-bordered table-striped col-md-8 col-md-offset-2" style="font-size:medium; ">
					<thead>
						<tr>
							<td></td>
							<td>Right</td>
							<td>Wrong</td>
							<td>Un-Attempted</td>
							<td>Total Score</td>
						</tr>
						<tr>
							<td>Mental Ability</td>
							<td><s:property value="%{shine.ma_right}" /></td>
							<td><s:property value="%{shine.ma_wrong}" /></td>
							<td><s:property value="%{shine.ma_ua}" /></td>
							<td></td>
						</tr>
						<tr>
							<td>Maths</td>
							<td><s:property value="%{shine.m_right}" /></td>
							<td><s:property value="%{shine.m_wrong}" /></td>
							<td><s:property value="%{shine.m_ua}" /></td>
							<td></td>
						</tr>
						<tr>
							<td>Physics</td>
							<td><s:property value="%{shine.pc_right}" /></td>
							<td><s:property value="%{shine.pc_wrong}" /></td>
							<td><s:property value="%{shine.pc_ua}" /></td>
							<td></td>
						</tr>
						<tr>
							<td>Biology</td>
							<td><s:property value="%{shine.b_right}" /></td>
							<td><s:property value="%{shine.b_wrong}" /></td>
							<td><s:property value="%{shine.b_ua}" /></td>
							<td></td>
						</tr>
						<tr>
							<td>Total</td>
							<td><s:property value="%{shine.total_right}" /></td>
							<td><s:property value="%{shine.total_wrong}" /></td>
							<td><s:property value="%{shine.total_ua}" /></td>
							<td><s:property value="%{shine.total_score}" /></td>
						</tr>
						
					</thead>
				</table>
				
				</div>
			</div>
		</section>
		<!-- END / BLOG -->
		<!-- FOOTER --></div>
		<jsp:include page="/jsp/footer.jsp"></jsp:include>
		<!-- END / FOOTER -->
	
	<!-- END / PAGE WRAP -->

	<!-- Load jQuery -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/library/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/library/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/library/jquery.owl.carousel.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/library/jquery.appear.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/library/perfect-scrollbar.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/library/jquery.easing.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/scripts.js"></script>
	
</body>
</html>