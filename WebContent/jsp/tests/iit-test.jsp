<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>IIT Foundation | Groom4More</title>

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
			<h2 class="page-section-title">IIT FOUNDATION</h2>
		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
					<div class="col-sm-7 col-md-8">
						<article class="single-blog-post">
							<h4 class="sm black bold">Introduction</h4>
							<p>Getting into IITs is a dream for many students and
								their parents too. In 2015 alone, there were over 12 lakh
								students who appeared in the JEE Mains. It is extremely
								important for every IIT aspirant to have the basics right
								and also know where they are failing and where they are
								scoring. A national level test series with analysis helps
								every students hoping and preparing to clear JEE to get
								into the prestigious IITs.</p>
							<p>Groom4more.com is every IIT aspirant's dream come
								true. We provide a national level foundation test series
								which helps students prepare better for IIT-JEE</p>
							<p>
								The major benefits of participating in groom4more.com are :
							</p>
							<ul>
								<li>You can compete with students from across the country
									(studying the same grade as you)</li>
								<li>See where you stand as against all the thousands of
									students</li>
								<li>Get analysis of your performances and ways to improve your
									performance</li>
								<li>Watch educational videos to help increase your
									understanding of the concepts</li>
							</ul>
							<p>Test analysis Highlights :</p>
							<ul>
								<li>Ranks (city wise, state wise and national level)</li>
								<li>Question wise analysis of the time taken, country wide %
									of students who got the question right</li>
								<li>Key and Solutions</li>
								<li>Videos that can help students overcome the short comings
									in that topic</li>
							</ul>
							<hr>
							<p>Select your class below for micro shedule</p>
							<br>
							<div class="row">
								<div class="select col-md-4">
									<s:select name="standard" cssClass="comm-field" styleId="standard" 
										list="#{'6':'Sixth','7':'Seventh','8':'Eight','9':'Ninth'}"
										headerKey="" headerValue="-- Select Class --">
	                                </s:select>
									<s:fielderror fieldName="standard" />
								</div>								     
						     	<div class="col-md-6" id="showButton" style="display: none;">
						     		<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target=".bs-example-modal-lg">CLICK HERE FOR MICRO SHEDULE</button>
						     	</div>
							</div>
							<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
								<div class="modal-dialog modal-lg">
							    	<div class="modal-content">
							      		<div class="modal-body" id="pdf-object">
							     									     
							      		</div>
							    	</div>
							  	</div>
							</div>
							<p>Get started today and get closer to getting into IITs.</p>
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
								<p>Test your over all skills here. Every week, you
									will be able to participate in one grand test, get
									analysis and improve your performances.</p>
								<s:form action="start-test" method="get" align="center"
									theme="simple">
									<s:hidden name="category" value="grand"></s:hidden>
									<s:hidden name="testCategory" value="1"></s:hidden>
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
			
			$('#standard').change(function() {
				$('#showButton').show();
				var standard= $('#standard').val();
				$('#pdf-object').html('<object data="<%=request.getContextPath()%>/images/eabhyas/'+standard+'-shedule.pdf" style="width:100%; height:600px;" frameborder="0"></object>')
			});
			
			
		});
	</script>
</body>
</html>