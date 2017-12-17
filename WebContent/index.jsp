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

<title>Ultimate guide to improving understanding and marks |
	GROOM4More.com</title>
<meta name="description"
	content="GROOM4MORE is a place where all school students can prepare for a better future by getting practice tests in their subjects and various competitive exams">
<meta name="keywords"
	content="GROOM4MORE, IIT, Medical, Foundation, SSC, State boards, CBSE, ICSE">
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
		<section id="slider-home" class="wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="flexslider flexslider-home">
							<ul class="slides">
								<li>
									<div class="row">
										<div class="col-md-6">
											<div class="flex-caption">
												<h1>Helping every student ace their tests</h1>
												<h6>We understand what it takes to get the best scores
													in different exams and tests. Our team will leave no stone
													unturned in helping you succeed. Jump on the ride!</h6>
												<a href="#" class="btn-white margin-t32">Read More</a>
											</div>
										</div>
										<!--.col-md-6-->

										<div class="col-md-6">
											<div class="flex-img">
												<img class="img-responsive"
													src="<%=request.getContextPath()%>/images/slider/slide-1.png"
													alt="" />
											</div>
										</div>
										<!--.col-md-6-->

									</div> <!--.row-->
								</li>

								<li>
									<div class="row">
										<div class="col-md-6">
											<div class="flex-caption">
												<h1>Learning like never before</h1>
												<h6>Learning on Groom4More.com is completely new. You
													will enjoy learning through our exciting tests and
													activities. There are lots of prizes too. Getting good
													grades is easy and fun now!</h6>
												<a href="#" class="btn-white margin-t32">Read More</a>

											</div>

										</div>
										<!--.col-md-6-->

										<div class="col-md-6">
											<div class="flex-img">
												<img class="img-responsive"
													src="<%=request.getContextPath()%>/images/slider/slide-2.png"
													alt="" />
											</div>
										</div>
										<!--.col-md-6-->

									</div> <!--.row-->
								</li>

								<li>
									<div class="row">
										<div class="col-md-6">


											<div class="flex-caption">
												<h1>Learning at your convenience</h1>
												<h6>Our platform gives you the opportunity to learn and
													improve at your convenience. You can use any device to
													continue the learning and don't have to carry your books
													all the time.</h6>
												<a href="#" class="btn-white margin-t32">Read More</a>

											</div>

										</div>
										<!--.col-md-6-->

										<div class="col-md-6">
											<div class="flex-img">
												<img class="img-responsive"
													src="<%=request.getContextPath()%>/images/slider/slide-3.png"
													alt="" />
											</div>
										</div>
										<!--.col-md-6-->

									</div> <!--.row-->
								</li>


							</ul>
						</div>
						<!--end flexslider-->

					</div>
					<!--.col-md-12-->
				</div>
				<!--.row-->
			</div>
			<!--.container-->

		</section>
		<!--slider-home-->
		<div class="zz-bottom"></div>

		<section id="home-features" class="wrap margin-t72">

			<div class="container">
				<div class="row">

					<div class="col-md-4 home-feature">
						<h5>Tests</h5>
						<div class="img-feature">
							<img class="img-responsive"
								src="<%=request.getContextPath()%>/images/home/feature-1.png"
								alt="" />
						</div>
						<p>Participate in National level tests in different subjects
							and areas - state board chapters, cbse chapters, Olympiads, IIT
							Foundation, Competitive exams etc.</p>

						<a href="#" class="btn-color margin-t32">Read More</a>
					</div>
					<!--end home-feature-->

					<div class="col-md-4 home-feature">
						<h5>Content</h5>
						<div class="img-feature">
							<img class="img-responsive"
								src="<%=request.getContextPath()%>/images/home/feature-2.png"
								alt="" />
						</div>
						<p>Get high quality curated content from multiple sources so
							that you can really improve your understanding of different
							topics. Learn at your own pace.</p>

						<a href="#" class="btn-color margin-t32">Read More</a>
					</div>
					<!--end home-feature-->

					<div class="col-md-4 home-feature">
						<h5>Analysis</h5>
						<div class="img-feature">
							<img class="img-responsive"
								src="<%=request.getContextPath()%>/images/home/feature-3.png"
								alt="" />
						</div>
						<p>The most important aspect of improving your scores is
							analysis. Now you can get detailed analysis of your performance
							and plan better to improve your scores.</p>

						<a href="#" class="btn-color margin-t32">Read More</a>
					</div>
					<!--end home-feature-->

				</div>
				<!--end row-->
			</div>
			<!--end container-->

		</section>
		<!--home-features-->


		<div class="zz-top"></div>
		<section id="home-play" class="wrap margin-t72">

			<div class="bkg-cover padding-72">

				<h2 class="home-title-section margin-b54">Come and learn with
					us</h2>

				<div class="container">

					<div class="row">

						<div class="col-md-6">

							<h4 class="margin-b24">#1 platform to improve conceptual
								understanding</h4>

							<p>GROOM4MORE.com is the best tool for any school student
								aiming to improve his understanding of various concepts and
								prepare for tests - boards, school tests, Olympiads, IIT and
								various other competitive exams. It is our strong belief that
								technology can help each student improve performance. G4M
								improves your chances through a structured program:</P>
							<ol>
								<li>Videos and content to help improve understanding of
									topics</li>
								<li>Tests to evaluate the current level of understanding</li>
								<li>Analysis to help you identify your areas of strength
									and weakness so that you can practice, prepare and improve</li>
							</ol>
							<P>GROOM is a national platform and provides you a great
								opportunity to understand your current levels of understanding
								of a topic through national level analysis. You benefit
								immensely from the wide variety of instructors and content. It
								gives you the flexibility to learn at your own pace and at your
								own convenience. There are multiple verticals of study on Groom.
								You can participate in all of them and get benefited.</p>

						</div>
						<!--end col-md-6-->

						<div class="col-md-6">

							<div class="home-play-holder clearfix">

								<div class="home-play-img">

									<img src="<%=request.getContextPath() %>/images/home/student.jpg" alt="" />

								</div>
								<!--end home-play-img-->

								<div class="home-play-text">

									<h5 class="margin-b16">Students</h5>

									<p>This is your one stop platform for all your academic
										needs. You will have a lot of fun while learning. Happy
										Learning!</p>

								</div>
								<!--end home-play-text-->

							</div>
							<!--end home-play-holder-->


							<div class="home-play-holder clearfix">

								<div class="home-play-img">

									<img src="<%=request.getContextPath() %>/images/home/teacher.jpg" alt="" />

								</div>
								<!--end home-play-img-->

								<div class="home-play-text">

									<h5 class="margin-b16">Teachers</h5>

									<p>You can give your students an opportunity to learn from
										different sources and also get detailed analysis of their
										performances thereby helping you improve their scores.</p>

								</div>
								<!--end home-play-text-->

							</div>
							<!--end home-play-holder-->

							<div class="home-play-holder clearfix">

								<div class="home-play-img">

									<img src="<%=request.getContextPath() %>/images/home/school.jpg" alt="" />

								</div>
								<!--end home-play-img-->

								<div class="home-play-text">

									<h5 class="margin-b16">Schools</h5>

									<p>You can now give each student the power of personalized
										learning. No need for costly programs to help the students in
										their learning process.</p>

								</div>
								<!--end home-play-text-->

							</div>
							<!--end home-play-holder-->


						</div>
						<!--end col-md-6-->

					</div>
					<!--end row-->

				</div>
				<!--end container-->

			</div>
			<!--bkg-cover-->

		</section>
		<!--home-play-->
		<div class="zz-bottom"></div>


		<!--home-latest-activity-->


		<div class="zz-top"></div>
		<section id="home-event" class="wrap margin-t72">

			<div class="bkg-cover padding-72">

				<h2 class="home-title-section margin-b54">Featured Event</h2>

				<div class="container">


					<div class="row">

						<!-- <ul class="event-big-meta">
							<li><i class="fa fa-calendar"></i> May 24, 2014</li>
							<li><i class="fa fa-clock-o"></i> 10 AM - 12 AM</li>
							<li><i class="fa fa-map-marker"></i> 31 Old Broad St</li>
							<li><i class="fa fa-phone"></i> 000 111 2222</li>
						</ul> -->

						<div class="col-md-8">

							<h4 class="margin-t54">PRODIGIES - Identifying Future Leaders</h4>

							<p>PRODIGIES is an attempt to bring out the leader in every student. Each team has an opportunity to address a problem and provide a solution that can make the world a better place. Compete with the best and the brightest from across the Country and leave your mark.</p>

						</div>
						<!--end col-md-6-->

						<div class="col-md-4">

							<img class="img-responsive margin-t54"
								src="<%=request.getContextPath() %>/images/prodigies.jpg" alt="" />

						</div>
						<!--end col-md-6-->

						<p class="alignc">
							<a href="<%=request.getContextPath() %>/jsp/prodigy/prodigies.jsp" class="btn-white margin-t32">View
								Details</a>
						</p>

					</div>
					<!--end row-->

				</div>
				<!--end container-->

			</div>
			<!--bkg-cover-->

		</section>
		<!--home-event-->
		<div class="zz-bottom"></div>




		<div class="zz-top"></div>
		
		<section id="home-testimonials" class="wrap margin-t72">

			<div class="bkg-cover padding-72">

				<div class="container">
					<div class="row">
						<div class="col-md-12">

							<div class="flexslider flexslider-testimonials">
								<ul class="slides">
									<li>
										<div class="clearfix">
											<!-- div class="client-avatar">
												<img src="<%=request.getContextPath() %>/images/testimonials/client-1.jpg" alt="" />
											</div -->
											<div class="client-quote">
												<p>"GROOM4MORE is an amazing platform for all the students to improve their scores in various exams. It helped
													my son in understanding where he is falling behind the other students from across the country. He now has a better
													chance to get into IITs because of Groom4More.com"</p>
												<h6>
													Madhuri S, <span>Parent</span>
												</h6>
											</div>

										</div>
									</li>

									<!-- li>
										<div class="clearfix">
											<div class="client-avatar">
												<img src="<%=request.getContextPath() %>/images/testimonials/client-2.jpg" alt="" />
											</div>
											<div class="client-quote">
												<p>"Suspendisse elementum turpis vitae libero lobortis
													laoreet. Quisque et dui dui integer vehicula ornare felis.
													Morbi malesuada feugiat tincidunt. Nullam sit amet tempus
													ante."</p>
												<h6>
													John Doe, <span>parent</span>
												</h6>
											</div>

										</div>
									</li -->

									<!-- li>
										<div class="clearfix">
											<div class="client-avatar">
												<img src="<%=request.getContextPath() %>/images/testimonials/client-3.jpg" alt="" />
											</div>
											<div class="client-quote">
												<p>"Dolor mi, ac viverra nulla faucibus a. Morbi mi
													urna, scelerisque nec ornare ut, aliquet ut mi. Aliquam
													erat volutpat. Proin dignissim tempus cursus. Donec
													tincidunt, velit ut egestas egestas."</p>
												<h6>
													April Doe, <span>parent</span>
												</h6>
											</div>

										</div>
									</li -->

								</ul>

							</div>
							<!-- flexslider-testimonials-->
						</div>
						<!-- col-md-12-->

					</div>
					<!--end row-->

				</div>
				<!--end container-->

			</div>
			<!-- bkg-cover-->

		</section>
		<!-- home-testimonials-->

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
	<script>
		$('document').ready(function() {
			$('#home').removeClass();
			$('#home').addClass('current_page_item');
		});
	</script>
</body>
</html>