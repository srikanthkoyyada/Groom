<%@page import="com.groom.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Admin Success | Groom4JEE</title>
<link href="<%=request.getContextPath()%>/css/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/css/prettyPhoto.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/css/animate.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/css/main.css" rel="stylesheet">
<style>
.header.blue {
	border-bottom-color: #d5e3ef;
}

h4.bigger {
	font-size: 19px;
}

.header {
	line-height: 28px;
	margin-bottom: 16px;
	margin-top: 18px;
	padding-bottom: 4px;
	border-bottom: 1px solid #CCC;
}

.blue {
	color: #478fca !important;
}

.lighter {
	font-weight: lighter;
}
</style>
<!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/js/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/ico/groom.ico">
</head>
<!--/head-->
<body>
	<jsp:include page="/jsp/admin-header.jsp"></jsp:include>
	<!--/header-->

	<section id="title" class="emerald">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h1>Admin</h1>
				</div>
				<div class="col-sm-6">
					<%-- <ul class="breadcrumb pull-right">
						<li><a href="<%=request.getContextPath()%>">Home</a></li>
						<li><a href="#">Pages</a></li>
						<li class="active">Registration</li>
					</ul> --%>
				</div>
			</div>
		</div>
	</section>
	<!--/#title-->

	<section id="registration" class="container" style="min-height: 450px;">

		<div class="col-md-1"></div>
		<div class="col-md-10">
			<h3 class="header blue lighter bigger">Added successfully</h3>
			<a href="<%=request.getContextPath() %>/admin">Go back to admin page</a>
		</div>

	</section>
	<!--/#registration-->

	<jsp:include page="/common/footer.jsp"></jsp:include>
	<!--/#footer-->

	<script src="<%=request.getContextPath()%>/js/js/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/jquery.prettyPhoto.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/main.js"></script>
</body>
</html>