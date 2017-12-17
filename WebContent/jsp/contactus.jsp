<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
<title>Contact Us - Groom4More</title>
</head>
<body id="page-top" class="home">

	<!-- PAGE WRAP -->
	<div id="page-wrap">

		<!-- PRELOADER -->
		<div id="preloader">
			<div class="pre-icon">
				<div class="pre-item pre-item-1"></div>
				<div class="pre-item pre-item-2"></div>
				<div class="pre-item pre-item-3"></div>
				<div class="pre-item pre-item-4"></div>
			</div>
		</div>
		<!-- END / PRELOADER -->

		<!-- HEADER -->
		<jsp:include page="/jsp/header.jsp"></jsp:include>
		<!-- END / HEADER -->

		<section class="sub-banner sub-banner-course">
			<div class="awe-static bg-sub-banner-course"></div>
			<div class="container">
				<div class="sub-banner-content">
					<h2 class="text-center">Contact Us</h2>
				</div>
			</div>
		</section>
		<!-- END / SUB BANNER -->


		<!-- BLOG -->
		<section id="questions" class="questions" style="min-height: 520px;">
			<div class="container">
				<div class="row">
					<!-- BLOG LIST -->
					<div class="col-md-3 col-md-offset-1">
						<div class="blog-single-content">
							<!-- POST -->
							<div class="post post-single">
								<div class="post-content">
									<h4 style="color: #393939;"><i class="fa fa-home"></i>&nbsp;Head Office :</h4>
									<p><i class="fa fa-map-marker"></i>&nbsp;8-2-351/1/9</p>
									<p>Road # 3, Lane Beside Times of India,</p>
									<p>Banjara Hills, Hyderabad - 500 034,</p>
									<p>Telangana, India</p>
									<p>
										<i class="fa fa-envelope"></i>&nbsp;Email : <a href="mailto:info@groom4more.com">info@groom4more.com</a>
									</p>
									<p>
										<i class="fa fa-mobile fa-lg"></i>&nbsp;Phone : <a href="">+91 95501 14466</a>
									</p>
								</div>
							</div>
							<!-- END / POST BODY -->
						</div>
						<!-- END / POST -->
					</div>
					<!-- END / BLOG LIST -->
					<!-- SIDEBAR -->
					<div class="col-md-6 col-md-offset-1">
						<aside class="blog-sidebar">
							<div id="map-div">
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1903.3536993233415!2d78.44499472022638!3d17.425824211727576!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb973334bd5579%3A0xc07f4cfb42972a48!2sBojja+IT+Solutions+Pvt+Ltd!5e0!3m2!1sen!2sin!4v1426579447692"
									width="100%" height="250" frameborder="0" style="border: 0"></iframe>
							</div>
							<!-- END / WIDGET TAG CLOUD -->
						</aside>
					</div>
					<!-- END / SIDEBAR -->
				</div>
			</div>

		</section>
		<!-- END / BLOG -->
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
	
			$('#contact').removeClass();
			$('#contact').addClass('current-menu-item');
		});
	</script>	
</body>
</html>