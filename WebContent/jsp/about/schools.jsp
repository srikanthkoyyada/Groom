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

<title>Schools | Groom4More</title>

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
	href="<%=request.getContextPath()%>/css/bootstrap/css/bootstrap.min.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/js/prettyphoto/css/prettyPhoto.css"
	type="text/css" media="all" />

</head>

<body>


	<div id="main" class="wrap">

		<jsp:include page="/common/header.jsp"></jsp:include>


		<section class="page-top wrap">

			<h2 class="page-section-title">Schools</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<section class="page-content wrap">

			<div class="container">

				<div class="row">

					<div class="col-sm-6 col-md-6">

						<h5 class="widgettitle">Partner with us</h5>

						<p align="justify">As a school principal/ correspondent/
							administrator you are responsible for the lives of hundreds of
							students. School plays the most important role in shaping a
							student's life. In the hyper-competitive world, every tool that
							can help the students improve their understanding of the concepts
							is required. Your students have to depend on just the notes from
							teacher or buy costly books. Groom4more.com provides you content
							from multiple Content Creators so you can choose the right
							content. You will get content for different state boards,
							Olympiads, IIT Foundation, Scholarship tests and many more.:</P>



					</div>
					<!-- col-md-6-->

					<div class="col-sm-6 col-md-6">

						<img class="img-responsive"
							src="<%=request.getContextPath()%>/images/aboutschool.jpg"
							alt="">

					</div>
					<!-- col-md-6-->

				</div>
				<!--row-->

				<div class="row">
					<br />
					<p align="justify">In the school, it is extremely difficult to
						evaluate how well a student understood a topic by comparing their
						performance as against a handful of students. The sample size is
						too small to give a great understanding of the student's current
						level of understanding. Your students will compete with the best
						and brightest from across the country on groom4more. You get
						valuable insights into your wards' performances (areas in which
						they need improvement, areas in which they excel, time management
						during tests etc.). Their performance now improves pretty fast.</p>
					<b>Own Tests & Content</b>
					<p align="justify">You will have a section on groom4more to
						upload content, tests, presentations, videos etc. The content can
						be customized for each class. You get valuable data to analyze the
						students' performance. It is completely free and helps the
						students learn from anywhere and at any time.</p>
					<b>The major benefits of partnering with groom4more.com are :</b>

					<ul>
						<li>National level analysis of your wards' performance</li>
						<li>See where your wards are against all the thousands of
							students</li>
						<li>Get analysis of your wards' performances and ways to
							improve it</li>
						<li>Educational videos to help increase their understanding
							of the concepts</li>
					</ul>
					<p align="justify">Get started today and help your students get
						closer to perfection in different subjects.</p>
					<p align="justify">Contact us on +91 95501 14466 to get all
						your students on the site today.</p>




					<!--row-->



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
	<script>
		$('document').ready(function() {
			$('#about').removeClass();
			$('#about').addClass('current_page_item');
		});
	</script>
</body>
</html>