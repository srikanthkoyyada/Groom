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
<title>Tests | Groom4More</title>

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
			<h2 class="page-section-title">TESTS</h2>
		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-12">
						<article class="single-blog-post">
							<div class="col-md-4 home-feature">
								<h5>Mathematics</h5>
								<div class="img-feature">
									<img class="img-responsive"
										src="<%=request.getContextPath()%>/images/111.jpg"
										alt="" />
								</div>
								<p>Test your mathematics skills here. Every week, you will
									be able to participate in one maths test, get analysis and
									improve your performances. This is the start of something
									amazing in your IIT preparation Journey.</p>
								<s:form action="start-test" method="post" align="center"
									theme="simple">
									<s:hidden name="category" value="maths"></s:hidden>
									<s:hidden name="testCategory" value="4"></s:hidden>
									<s:submit cssClass="btn-color margin-t32"
										value="PROCEED"></s:submit>
								</s:form>
							</div>
							<div class="col-md-4 home-feature">
								<h5>Physics</h5>
								<div class="img-feature">
									<img class="img-responsive"
										src="<%=request.getContextPath()%>/images/ph.jpg"
										alt="" />
								</div>
								<p>Physics is an amazing subject and is extremely
									important for every Engineer. No wonder IITs focus on physics
									so much to identify the best Engineering talent across the
									country. Get started and improve your skills every week.</p>
									<s:form action="start-test" method="post" align="center"
										theme="simple">
										<s:hidden name="category" value="physics"></s:hidden>
										<s:hidden name="testCategory" value="5"></s:hidden>
										<s:submit cssClass="btn-color margin-t32" value="PROCEED"></s:submit>
									</s:form>
							</div>
							<div class="col-md-4 home-feature">
								<h5>Chemistry</h5>
								<div class="img-feature">
									<img class="img-responsive"
										src="<%=request.getContextPath()%>/images/ch.jpg"
										alt="" />
								</div>
								<p>Take the weekly Chemistry tests and perfect one topic
									at a time. Now that you are doing amazingly well in Maths and
									Physics, would you not want to do well in Chemistry as well ?</p>
								<s:form action="start-test" method="get" align="center"
									theme="simple">
									<s:hidden name="testCategory" value="6"></s:hidden>
									<s:hidden name="category" value="chemistry"></s:hidden>
									<s:submit cssClass="btn-color margin-t32" value="PROCEED"></s:submit>
								</s:form>
							</div>					
						</article>
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