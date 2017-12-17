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

<title>Who We Are? | Groom4More</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]> <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> <![endif]-->

<link
	href='http://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900%7CPacifico'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="shortcut icon" href="<%=request.getContextPath() %>/images/favicon.ico">

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

			<h2 class="page-section-title">About Us</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<section class="page-content wrap">

			<div class="container">

				<div class="row">

					<div class="col-sm-6 col-md-6">

						<h5 class="widgettitle">Who We Are</h5>

						<p align="justify">GROOM4MORE.com is the best tool for any
							school student aiming to improve his understanding of various
							concepts and prepare for tests - boards, school tests, Olympiads,
							IIT and various other competitive exams. It is our strong belief
							that technology can help each student improve performance. G4M
							improves your chances through a structured program:</P>
						<ol>
							<li>Videos and content to help improve understanding of
								topics</li>
							<li>Tests to evaluate the current level of understanding</li>
							<li>Analysis to help you identify your areas of strength and
								weakness so that you can practice, prepare and improve</li>
						</ol>


					</div>`
					<!-- col-md-6-->

					<div class="col-sm-6 col-md-6">

						<img class="img-responsive"
							src="<%=request.getContextPath()%>/images/about.jpg"
							alt="">

					</div>
					<!-- col-md-6-->

				</div>
				<!--row-->

				<div class="row">
					<p align="justify">GROOM is a national platform and provides
						you a great opportunity to understand your current levels of
						understanding of a topic through national level analysis. You
						benefit immensely from the wide variety of instructors and
						content. It gives you the flexibility to learn at your own pace
						and at your own convenience. There are multiple verticals of study
						on Groom. You can participate in all of them and get benefited.</p>
					<h5 class="h3">LEARNING</h5>
					<p align="justify">On G4M, our attempt is to provide the best
						quality content for you at ZERO COST. We collate the best content
						for you, reach out to the best trainers and institutes to get the
						highest quality content and provide an opportunity for the best
						teachers to share their knowledge with thousands of students
						across the country. You can browse through the content and go
						through it at your own convenience.</p>
					<h5 class="h3">TESTS</h5>
					<p align="justify">Tests are a great way to evaluate our
						current level of understanding on the given topic. It is important
						to know where we stand currently so that we can focus on areas
						where we lag. G4M provides tests on a variety of areas - state
						board chapters, cbse chapters, Olympiads, IIT Foundation,
						Competitive exams etc. All these tests are taken by students from
						across India. It gives you an opportunity to know where you stand
						nationally. The more the students taking the test the better is
						the analysis for you.</p>
					<h5 class="h3">ANALYSIS</h5>
					<p align="justify">We believe that detailed analysis for every
						test helps you gain proficiency in each topic. It is always better
						to know the areas that you are strong or weak in so that you can
						plan your preparation properly.</p>

					<b>Test analysis Highlights :</b>
					<ol>
						<li>Ranks (city wise, state wise and national level)</li>
						<li>Question wise analysis of the time taken, country wide %
							of students who got the question right</li>
						<li>Key and Solutions</li>
						<li>Videos that can help students overcome the short comings
							in that topic</li>
					</ol>
					<p align="justify">GROOM4MORE is your virtual teacher who
						strives as hard as your teacher to help you improve and become
						successful.</p>

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
	<script type='text/javascript' src='<%=request.getContextPath() %>/css/bootstrap/js/bootstrap.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath() %>/js/jquery.easing.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath() %>/js/jquery.flexslider-min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath() %>/js/prettyphoto/js/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath() %>/js/jquery.form.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath() %>/js/init.js'></script>
	<script type="text/javascript">
		$('document').ready(function() {
			$('#about').removeClass();
			$('#about').addClass('current_page_item');
		});
	</script>
</body>
</html>
