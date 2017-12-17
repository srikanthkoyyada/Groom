<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
if (session.getAttribute("user")==null) {

response.sendRedirect(request.getContextPath()
+ "/jsp/login.jsp?next="+request.getRequestURL()+"?"+request.getQueryString());
return;

}
%>
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

<title>Olympiad Test | Groom4More</title>

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
<style>
.comm-field {
    padding: 8px;
    margin-top: 8px;
    border: 1px solid #e5e5e5;
    background: #f5f5f5;
    color: #707070;
}
</style>
</head>

<body>
<div id="main" class="wrap">

		<jsp:include page="/common/header.jsp"></jsp:include>

		<section class="page-top wrap">
			<h2 class="page-section-title">OLYMPIAD TEST</h2>
		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
					<div class="col-sm-7 col-md-8">
						<article class="single-blog-post">
							<h4 class="sm black bold">Introduction</h4>
							<p>Olympiads are conducted by various educational
								organizations around the world. Mainly, Olympiads are
								conducted as annual competitions for school students in
								subjects like Math, Science, Computers,Astronomy,
								Philosophy, Social sciences, Linguistics, Earth science etc.
								The main objective of an Olympiad is to evaluate a student's
								subject in a particular subject.</p>
							<p>This also plays a key role in shaping students future
								goals according to their interests. Along with evaluating a
								student, Olympiads also evaluates the study methods adapted
								by several educational institutions.Most popular Olympiads
								conducted in India are the International Mathematics
								Olympiad and theNational Science Olympiad conducted by
								Science Olympiad Foundation (SOF). These two Olympians
								gained the most popularity these days. Every year, thousands
								of students around the world apply forOlympiads. Students
								from classes 2nd-12th can apply for the Olympiads conducted
								by SOF.</p>
								<p>The ScienceOlympiad 2012 is also a great Olympiad
								apart from International Mathematics Olympiad and
								theNational Science Olympiad. The science Olympiad is
								conducted by Indira Gandhi National OpenUniversity (IGNOU)
								in collaboration with the United Nations Educational
								Scientific and CulturalOrganization (UNESCO).</p>
								<br>
																		
								<p>This Olympiad is conducted for the students of Class
									XI in various south Asian countries (India, Sri Lanka,
									Afghanistan, Bangladesh, Bhutan, Maldives, Nepal and
									Pakistan).Olympiads are the best platforms for the young
									brains to test their skills. As the standard of an Olympiad
									is high, the rewards also weigh fairly. The goodies the
									students can get ranges from PCs, laptops, mobile phones,
									cash prizes along with fellowship access to a good
									university. Apart from that, each student who attends the
									Olympiad gets a participation certificate according to the
									levels that they have passed.Covering textbooks only doesn't
									matter for attending an Olympiad; the student should know
									more than what is printed in the textbooks.</p>
								<p>Along with their high standard skills, students also
									need to practice well to do their best in the Olympiad.
									Students who wish to prepare and participate for such
									Olympiads must improve their knowledge by reading good
									Olympiad guides.</p>
							</article>
						</div>
						<div class="col-md-4">
							<div class="home-feature">
								<h5>Grand Tests</h5>
								<div class="img-feature">
									<img class="img-responsive"
										src="<%=request.getContextPath()%>/images/home/feature-2.png"
										alt="" />
								</div>
								<p>Test your over all skills here. Every week, you will
									be able to participate in one grand test, get analysis and
									improve your performances. This is the start of something
									amazing in your IIT preparation Journey.</p>
								<s:form action="start-test" method="get" align="center"
									theme="simple">
									<s:hidden name="category" value="grand"></s:hidden>
									<s:hidden name="testCategory" value="2"></s:hidden>
									<s:submit cssClass="btn-color margin-t32" value="PROCEED"></s:submit>
								</s:form>
							</div>
						</div>
					</div>
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
	<script>
		$('document').ready(function() {
			$('#tests').removeClass();
			$('#tests').addClass('current-menu-item');
		});
	</script>
</body>
</html>