<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
<style>
/* Pricing table #1 */

.pricel{
text-align: center;
margin-top:10px;
margin-bottom: 20px !important;
}

.plist a i{
	color: #333;
}

.plist a:hover i{
	color: #333;
	text-decoration: none;
}

.pricel .phead-top{
margin:0px;
padding:15px 10px;
}

.pricel .phead-top h4{
color:#fff;
}

.pricel .phead-bottom{
background:#f8f8f8;
border-left:1px solid #ddd;
border-right:1px solid #ddd;
border-bottom:1px solid #ddd;
margin:0px;
padding:10px 10px 5px 10px;
color:#777;
font-weight:700;
font-size:18px;
line-height:27px;
}

.pricel .pst{
font-size:12px;
position:relative;
top:-5px;
font-weight:normal;
}

.pricel .psb{
font-size:12px;
font-weight:normal;
}

.pricel .pbutton{
background:#eee;
border:1px solid #ddd;
padding:10px 0px 15px 0px;
color:#777;
font-size:20px;
text-align: center;
margin-top: 0px;
}

.pricel .plist{
border-left:1px solid #ddd;
border-right:1px solid #ddd;
background:#fcfcfc;
}

.pricel .plist ul{
   margin-left: 0px;
margin-bottom: 0px !important;
padding-left:0px;
}

.pricel .plist li{
   list-style-type: none;
background:none;
padding:13px 0px;
font-size: 12px;
border-bottom:1px solid #e1e1e1;
}

.pricel .plist li:nth-child(even) {
background-color:#f8f8f8;
}

.pricel .plist li:hover{
background:#fff;
}

.pricel .phead-top{
	display: block;
}

/* Pricing #2 */

.pricing-two .pricel{
	max-width: 260px;
	margin:40px auto;
}

.pricing-two .phead-top{
	padding-top: 60px;
}

.phead-round{
	width: 80px;
	height: 80px;
	line-height: 22px;
	margin: 0 auto;
	padding-top: 20px;
	border-radius: 100px;
	border: 4px solid #fff;
	cursor: pointer;
	color: #fff;
	-webkit-transition:background 1s ease;
	-moz-transition:background 1s ease;
	-o-transition:background 1s ease;
	transition:background 1s ease;	
	margin-top: -150px;
}

.pricing-two .pricel .phead-top{
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	text-transform: uppercase;
}

.phead-round:hover{
	-webkit-transition:background 1s ease;
	-moz-transition:background 1s ease;
	-o-transition:background 1s ease;
	transition:background 1s ease;	
}

.phead-round span{
	display: block;
	font-size: 13px;
	font-weight: normal;
}
</style>
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
<title>IIT Foundation - Groom4More</title>
</head>
<!--/head-->
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
					<h2 class="text-center">IIT Foundation</h2>
				</div>
			</div>
		</section>
		<!-- END / SUB BANNER -->
		<!-- BLOG -->
		<section id="questions" class="questions">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1">
						<div class="tabs-page">
							<ul class="nav-tabs" role="tablist">
								<li class="active"><a href="#introduction" role="tab"
									data-toggle="tab">Tests</a></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content">
								<!-- INTRODUCTION -->
								<div class="tab-pane fade in active" id="introduction">									
									<div class="row" style="align: center;">
										<div class="col-md-4">
											<div class="pricel">
												<h5 class="phead-top tabred">Mathematics</h5>
												<div class="phead-bottom" align="center">
													<img src="<%=request.getContextPath()%>/images/111.jpg"
														alt="" style="height: 100px; width: 100px;" />
												</div>
												<div class="plist">
													<p>Test your mathematics skills here. Every week, you
														will be able to participate in one maths test, get
														analysis and improve your performances. This is the start
														of something amazing in your IIT preparation Journey.</p>
												</div>
												<div class="pbutton button">
													<s:form action="start-test" method="post" align="center"
														theme="simple">
														<s:hidden name="category" value="maths"></s:hidden>
														<s:hidden name="testCategory" value="1"></s:hidden>
														<s:submit cssClass="mc-btn btn-style-1"
															style="background: #ff5d5e; color: #FFF;" value="PROCEED"></s:submit>
													</s:form>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="pricel">
												<h5 class="phead-top tabblue">Physics</h5>
												<div class="phead-bottom" align="center">
													<img src="<%=request.getContextPath()%>/images/ph.jpg"
														alt="" style="height: 100px; width: 100px;" />
												</div>
												<div class="plist">
													<p>Physics is an amazing subject and is extremely
														important for every Engineer. No wonder IITs focus on
														physics so much to identify the best Engineering talent
														across the country. Get started and improve your skills
														every week.</p>
												</div>
												<div class="pbutton button">
													<s:form action="start-test" method="post" align="center"
														theme="simple">
														<s:hidden name="category" value="physics"></s:hidden>
														<s:hidden name="testCategory" value="1"></s:hidden>
														<s:submit cssClass="mc-btn btn-style-1"
															style="background: #08c; color: #FFF;" value="PROCEED"></s:submit>
													</s:form>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="pricel">
												<h5 class="phead-top tabgreen">Chemistry</h5>
												<div class="phead-bottom" align="center">
													<img src="<%=request.getContextPath()%>/images/ch.jpg"
														alt="" style="height: 100px; width: 100px;" />
												</div>
												<div class="plist">
													<p>Take the weekly Chemistry tests and perfect one
														topic at a time. Now that you are doing amazingly well in
														Maths and Physics, would you not want to do well in
														Chemistry as well ?</p>
													<br><br>
												</div>
												<div class="pbutton button">
													<s:form action="start-test" method="post" align="center"
														theme="simple">
														<s:hidden name="category" value="chemistry"></s:hidden>
														<s:hidden name="testCategory" value="1"></s:hidden>
														<s:submit cssClass="mc-btn btn-style-1"
															style="background: #5ED960; color: #FFF;" value="PROCEED"></s:submit>
													</s:form>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END / INTRODUCTION -->
							</div>
						</div>
					</div>
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
		/* $('document').ready(function() {
			$('#about').removeClass();
			$('#about').addClass('current-menu-item');
		}); */
	</script>
</body>
</html>