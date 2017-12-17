<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description"
	content="GROOM4MORE is a place where all school students can prepare for a better future by getting practice tests in their subjects and various competitive exams">
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
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/ico/groom.ico"
	type="image/x-icon" />
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
<title>Schools - Groom4More</title>
</head>
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
					<h2 class="text-center">Schools</h2>
				</div>
			</div>
		</section>
		<!-- END / SUB BANNER -->
		<!-- BLOG -->
		<section id="questions" class="questions" style="min-height: 520px;">
			<div class="container">
				<div class="row">

					<!-- BLOG LIST -->
					<div class="col-md-8">
						<div class="blog-single-content">
							<!-- POST -->
							<div class="post post-single">
								<div class="post-content">
									<p>As a school principal/ correspondent/ administrator you
										are responsible for the lives of hundreds of students. School
										plays the most important role in shaping a student's life. In
										the hyper-competitive world, every tool that can help the
										students improve their understanding of the concepts is
										required. Your students have to depend on just the notes from
										teacher or buy costly books. Groom4more.com provides you
										content from multiple Content Creators so you can choose the
										right content. You will get content for different state
										boards, Olympiads, IIT Foundation, Scholarship tests and many
										more.</p>
									<p>In the school, it is extremely difficult to evaluate how
										well a student understood a topic by comparing their
										performance as against a handful of students. The sample size
										is too small to give a great understanding of the student's
										current level of understanding. Your students will compete
										with the best and brightest from across the country on
										groom4more. You get valuable insights into your wards'
										performances (areas in which they need improvement, areas in
										which they excel, time management during tests etc.). Their
										performance now improves pretty fast.</p>
									<b>Own Tests & Content</b>
									<p align="justify">You will have a section on groom4more to
										upload content, tests, presentations, videos etc. The content
										can be customized for each class. You get valuable data to
										analyze the students' performance. It is completely free and
										helps the students learn from anywhere and at any time.</p>
									<b>The major benefits of partnering with groom4more.com are
										:</b>

									<ul>
										<li>National level analysis of your wards' performance</li>
										<li>See where your wards are against all the thousands of
											students</li>
										<li>Get analysis of your wards' performances and ways to
											improve it</li>
										<li>Educational videos to help increase their
											understanding of the concepts</li>
									</ul>
									<p>Get started today and help your students get closer to
										perfection in different subjects.</p>
									<p>Contact us on +91 95501
										14466 to get all your students on the site today.</p>
								</div>
							</div>
							<!-- END / POST BODY -->
						</div>
						<!-- END / POST -->
					</div>
					<!-- END / BLOG LIST -->

					<!-- SIDEBAR -->
					<div class="col-md-3 col-md-offset-1">
						<aside class="blog-sidebar">
							<!-- Start Touch Slider -->
							<div class="item">
								<img alt=""
									src="<%=request.getContextPath()%>/images/slider/1.jpg">
							</div>
							<div class="item">
								<img alt=""
									src="<%=request.getContextPath()%>/images/slider/india.png">
							</div>
							<div class="item">
								<img alt=""
									src="<%=request.getContextPath()%>/images/slider/3.jpg">
							</div>
							<!-- End Touch Slider -->
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
			$('#schools').removeClass();
			$('#schools').addClass('current-menu-item');
		});
	</script>
</body>
</html>