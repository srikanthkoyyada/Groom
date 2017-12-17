<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords"
	content="Iit online exams, Iit skill tests, Mathematics skill tests, Science skill tests, Mathematics Olympiad tests,
		National Science Olympiad tests, Online iit tests, Best Educational videos, Best science videos, Online maths tests, 
		Online mathematics tests, Online science tests, Online physics tests, Online iit maths exam, Online iit science exam">
<title>User Activation  | Groom4More</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/prettyPhoto.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/animate.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/main.css" rel="stylesheet">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/images/ico/groom.ico" type="image/x-icon" />
<!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/js/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/ico/groom.ico">
</head>
<!--/head-->
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<section id="title" class="emerald">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h1>User Activation</h1>
				</div>
				<div class="col-sm-6">
					<ul class="breadcrumb pull-right">
						<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
						<li class="active"></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!--/#title-->

	<section id="questions" class="questions" style="min-height: 520px;">
		<div class="well center">
			<h2 style="color: #393939;">Sorry! The user is already activated or invalid user activation URL or URL expired</h2>
			
			<a href="<%=request.getContextPath()%>/login.action">Click here to continue</a>
			
			<h4 style="color: #393939;">Please contact us at info@groom4more.com or 97013 20902 with any questions.</h4>
			
		</div>
	</section>
	<!-- FOOTER -->
		<jsp:include page="/jsp/footer.jsp"></jsp:include>
		<!-- END / FOOTER -->
	</div>
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
	<script>
		$('document').ready(function() {
			$('#register').removeClass();
			$('#register').addClass('current-menu-item');
		});
	</script>
</body>
</html>