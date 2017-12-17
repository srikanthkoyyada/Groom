
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.groom.bean.User"%>
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

<title>Prodigies - Identifying Young Talents | Groom4More</title>

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
			<h2 class="page-section-title">PRODIGIES</h2>
		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
					<div class="col-sm-7 col-md-8">
						<article class="single-blog-post">
							<img class="img-responsive margin-b32" src="<%=request.getContextPath()%>/images/prodigies.jpg"
								alt="" />
							<div class="clearfix margin-b32">
								<div class="date-meta">
									<!-- <span class="date-big">18</span> <span class="date-small">November,
										2016</span> -->
								</div>
								<!-- end date-meta -->

								<div class="blog-title">
									<h4>PRODIGIES - Identifying Young Talents</h4>

									<!-- ul class="blog-meta">
										<li><i class="fa fa-folder"></i><a href="#">News</a></li>
										<li><i class="fa fa-comments"></i> <a href="#">3 Comments</a></li>
									</ul -->
								</div>
								<!--  blog-title -->

							</div>
							<!--  clearfix -->
							<div class="button">
								<s:form action="submit-prodigy" method="get" align="center"
									theme="simple">
									<s:submit cssClass="btn btn-block btn-info" value="Submit Your Idea"></s:submit>
								</s:form>
							</div>

							<p align="justify">Each student can contribute towards the
								betterment of the society. Here is your opportunity to put your
								thinking powers to good use. Participate in PRODIGIES and
								compete with the best and the brightest from across the country
								to test out the power of ideas.</p>
							<p align="justify">Each team needs to select one of the six
								themes and then provide an idea or solution on that theme that
								can impact the lives of hundreds of thousands of people in a
								good way.</p>
							<p>The themes are:
							<ul>
								<li>Poverty Alleviation</li>
								<li>Corruption</li>
								<li>Education</li>
								<li>Employment</li>
								<li>Health</li>
								<li>Environment</li>
							</ul>
							<p align="justify">
								PRODIGIES will be conducted in three rounds:<br />
							<ul>
								<li>
									<p align="justify">
										<font color="purple">ROUND ONE </font><br />The teams need to
										submit their entry in about 500 words on what their idea is,
										how it will impact the society, how many people and how they
										will benefit. <br /> <font color="orange"> This round
											 Closes on the 10<sup>th</sup> of March. All the entries will be
											evaluated by our judges during this period. We would also be
											opening up all the entries for public review.
										</font>
									</p>
								</li>
								<br />
								<li><p align="justify">
										<font color="green">ROUND TWO</font> <br />All the entries
											submitted in the Round one are evaluated by our experts and
											the top 10% ideas are invited for the Round Two. In this
											round, the teams are expected to send detailed presentations
											explaining the problem statement, people impacted, benefits
											and other implications. <br /> <font color="orange">The
											results will be declared on the 25<sup>th</sup> of March and the
											teams need to send the detailed presentations by the 10<sup>th</sup> of March.
										</font>
									</p></li>
								<br />
								<li>
									<p align="justify">
										<font color="tomato">ROUND THREE</font><br />The top teams
										will make a presentation in person or via video conference to
										explain the project in detail. There would also be a Q & A
										round with the Judges. <br /> <font color="orange">The
										final presentations will be scheduled in the first week of	February.</font>
									</p>
								</li>
							</ul>

							The top 6 teams from across the country would win amazing prizes
							and get national recognition.
							</p>

							<div class="button">
								<s:form action="submit-prodigy" method="get" align="center"
									theme="simple">
									<s:submit cssClass="btn btn-block btn-info" value="Submit Your Idea"></s:submit>
								</s:form>
							</div>
							<p>&nbsp;</p>
							<p align="justify">GUIDELINES AND TERMS:</p>
							<p align="justify">
							<ul>
								<li>Each team should have three members from the same
									school. They can be from different classes/ grades</li>
								<li>The students should be from grades/ classes III to X</li>
								<li>If the idea is copied, the team will be disqualified.</li>
							</ul>
							</p>
							<p>Contact us on +91 9550 114466 for more details.</p>

							<p class="post-tags">
								<i class="fa fa-tags"></i>Tags: <a href="#">prodigies</a>, <a
									href="#">competition</a>, <a href="#">talent</a>, <a href="#">betterplanet</a>
							</p>







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
	<script type='text/javascript' src='<%=request.getContextPath()%>/css/bootstrap/js/bootstrap.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.easing.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.flexslider-min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/prettyphoto/js/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.form.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/init.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/bootbox.min.js'></script>
	<script>
		$('document').ready(function() {
			$('#prodigy').removeClass();
			$('#prodigy').addClass('current-menu-item');
			<% User user = (User) session.getAttribute("user");
				if(session.getAttribute("user")==null) { 
			%>
			setTimeout(function() {	
					//$('#myModal').modal();
				
				
						bootbox.dialog({
						  message: "<p>You need to be logged in to submit your prodigy entry.</p>",
						  title: "<h4 class='center'>Login to participate in Prodigy</h4>",
				  			buttons: {
				    			success: {
				      				label: "Login",
				      				className: "btn-success",
				      				callback: function() {
				      					location.href='<%=request.getContextPath()%>/jsp/prodigy/login.jsp';
									}
								},
								danger : {
									label : "Close X",
									className : "btn-danger",
									callback : function() {
									this.close();
								}
							}
						}
					});
				
				}, 1000)
			<% } %>
		});
	</script>

</body>
</html>