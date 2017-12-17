<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.groom.bean.User"%>
<%@page import="com.groom.service.UserService"%>
<%@page import="com.groom.service.impl.UserServiceImpl"%>
<%@ page import="com.groom.dao.MiscDAO" %>
<%@ page import="com.groom.dao.impl.MiscDAOImpl" %>
<%
if (session.getAttribute("user")==null) {
String nxturl=request.getRequestURL().toString();
String redirectPage=nxturl.substring(nxturl.indexOf("/", 27)); 
response.sendRedirect(request.getContextPath()
+ "/jsp/login.jsp?next="+redirectPage+"?"+request.getQueryString());
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

<title>Online Mock Test Series for +2/ Intermediate 2nd year students | Groom4More</title>
<meta name="description"
	content="Online Mock Tests for competitive exams from GROOM4MORE help you build the right momentum for your exam season. It includes mock tests for  IIT Mains,
	IIT Advanced, BITSAT, VITEEE, EAMCET, SRM and MIT. 	You will ace your exam season.">
<meta name="keywords"
	content="GROOM4MORE, IIT Mains, IIT Advanced, BITSAT, VITEEE, SRM, EAMCET, mocks online, MIT, competitive exams">


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
strike{
	color: RED;
}
</style>
</head>

<body>
	<div id="main" class="wrap">

		<jsp:include page="/common/header.jsp"></jsp:include>

		<section class="page-top wrap">
			<h2 class="page-section-title">MOCKS</h2>
		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-12">
						<h1> Online Mock Test Series for Competitive Exams </h1>
						<article class="single-blog-post">
							<p>This is the last step in the preparation for all the competitive exams. The exams are fast approaching and every day is extremely important. Mock Tests are extremely important for any student to iron out any glitches and identify the areas that need your attention. </p>
							<p>The test series starts on February 2nd, 2017. Please click <a href="<%=request.getContextPath() %>/jsp/tests/jee.jsp">here</a> for the test schedule.</p>
							<p>
								<%-- <s:form action="start-sample-test-category" method="get" align="center"
									theme="simple">
									<s:hidden name="category" value="engg"></s:hidden>
									<s:hidden name="standard" value="1"></s:hidden>
									<s:hidden name="testCategory" value="7"></s:hidden>
									<s:submit cssClass="btn-color margin-t32" value="PROCEED"></s:submit>
								</s:form> --%>
								<a href="<%=request.getContextPath() %>/jsp/tests/start-sample-test-category.action?category=engg&standard=1&testCategory=7"
									class="btn btn-lg btn-info btn-block">CLICK HERE FOR SAMPLE TESTS</a>
							</p>
							<% if (session.getAttribute("user")!=null) { %>
							<div><% 
									MiscDAO miscDAO = new MiscDAOImpl();
									User user = (User) session.getAttribute("user");									
								%>
								<h5>You are subscribed for :</h5>
								<ul>						
									
									<%	if(miscDAO.isUserSubscribedForType(user.getUsername(), "ALLTESTS")) { %>
									<li><i class="fa fa-check" style="color: GREEN;"></i>&nbsp;EAMCET</li>
									<li><i class="fa fa-check" style="color: GREEN;"></i>&nbsp;IIT</li>
									<li><i class="fa fa-check" style="color: GREEN;"></i>&nbsp;VITEEE</li>
									<li><i class="fa fa-check" style="color: GREEN;"></i>&nbsp;BITSAT</li>
									<li><i class="fa fa-check" style="color: GREEN;"></i>&nbsp;SRMEEE</li>
									<li><i class="fa fa-check" style="color: GREEN;"></i>&nbsp;MIT</li>
									<% } else { %>
										<%	if(miscDAO.isUserSubscribedForType(user.getUsername(), "EAMCET")) { %>
										<li><i class="fa fa-check" style="color: GREEN;"></i>&nbsp;EAMCET</li>
										<% } else { %>
										<li><i class="fa fa-times" style="color: RED;"></i>&nbsp;EAMCET</li>
										<% } %>
										
										<%	if(miscDAO.isUserSubscribedForType(user.getUsername(), "IIT")) { %>
										<li><i class="fa fa-check" style="color: GREEN;"></i>&nbsp;IIT</li>
										<% } else { %>
										<li><i class="fa fa-times" style="color: RED;"></i>&nbsp;IIT</li>
										<% } %>
										
										<%	if(miscDAO.isUserSubscribedForType(user.getUsername(), "VITEEE")) { %>
										<li><i class="fa fa-check" style="color: GREEN;"></i>&nbsp;VITEEE</li>
										<% } else { %>
										<li><i class="fa fa-times" style="color: RED;"></i>&nbsp;VITEEE</li>
										<% } %>
										
										<%	if(miscDAO.isUserSubscribedForType(user.getUsername(), "BITSAT")) { %>
										<li><i class="fa fa-check" style="color: GREEN;"></i>&nbsp;BITSAT</li>
										<% } else { %>
										<li><i class="fa fa-times" style="color: RED;"></i>&nbsp;BITSAT</li>
										<% } %>
										
										<%	if(miscDAO.isUserSubscribedForType(user.getUsername(), "SRMEEE")) { %>
										<li><i class="fa fa-check" style="color: GREEN;"></i>&nbsp;SRMEEE</li>
										<% } else { %>
										<li><i class="fa fa-times" style="color: RED;"></i>&nbsp;SRMEEE</li>
										<% } %>
										
										<%	if(miscDAO.isUserSubscribedForType(user.getUsername(), "MIT")) { %>
										<li><i class="fa fa-check" style="color: GREEN;"></i>&nbsp;MIT</li>
										<% } else { %>
										<li><i class="fa fa-times" style="color: RED;"></i>&nbsp;MIT</li>
										<% } %>
									<% } %>
								</ul>
							</div>							
							<% } %>
							<p>We are now offering early bird discounts. Subscribe today and avail great discounts.</p>
							<p>&nbsp;</p>
							<table class="table table-bordered">
								<thead align="center">
									<tr>
										<th><h5>Name of the exam</h5></th>
										<th><h5>Number of tests</h5></th>
										<th><h5>Price</h5></th>
										<th><h5>Status</h5></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>IIT</td>
										<td>JEE Mains (30 full length mock tests) JEE Advanced
											(15 full length mock tests)</td>
										<td><p><strike>Rs: 1000/-</strike></p>
											Rs: 500/-</td>
										<td>
											<a href="https://www.instamojo.com/Groom4More/iit-jee-mains-and-advanced-test-series/" rel="im-checkout" data-behaviour="remote" 
												data-style="flat" data-text="PURCHASE"></a>
										</td>
									</tr>

									<tr>
										<td>BITSAT</td>
										<td>20 full length tests</td>
										<td><p><strike>Rs: 1000/-</strike></p>
											Rs: 500/-</td>
										<td>
											<a href="https://www.instamojo.com/Groom4More/bitsat-test-series/" rel="im-checkout"
												data-behaviour="remote" data-style="flat" data-text="PURCHASE"></a>

										</td>
									</tr>

									<tr>
										<td>EAMCET</td>
										<td>15 full length tests</td>
										<td><p><strike>Rs: 500/-</strike></p>
											Rs: 300/-</td>
										<td>
											<a href="https://www.instamojo.com/Groom4More/eamcet-mock-test-series/" rel="im-checkout" 
												data-behaviour="remote" data-style="flat" data-text="PURCHASE"></a>
										</td>
									</tr>

									<tr>
										<td>VIT</td>
										<td>10 full length tests</td>
										<td><p><strike>Rs: 500/-</strike></p>
											Rs: 200/-</td>
										<td>
											<a href="https://www.instamojo.com/Groom4More/viteee-test-series/" rel="im-checkout" data-behaviour="remote" 
												data-style="flat" data-text="PURCHASE"></a>
										</td>
									</tr>

									<tr>
										<td>SRM</td>
										<td>10 full length tests</td>
										<td><p><strike>Rs: 500/-</strike></p>
											Rs: 200/-</td>
										<td>
											<a href="https://www.instamojo.com/Groom4More/srmjeee-test-series/" rel="im-checkout" data-behaviour="remote" 
												data-style="flat" data-text="PURCHASE"></a>
										</td>
									</tr>

									<tr>
										<td>MIT</td>
										<td>10 full length tests</td>
										<td><p><strike>Rs: 500/-</strike></p>
											Rs: 200/-</td>
										<td>
											<a href="https://www.instamojo.com/Groom4More/mit-engineering-exam-test-series/" rel="im-checkout" 
												data-behaviour="remote" data-style="flat" data-text="PURCHASE"></a>
										</td>
									</tr>

									<tr>
										<td>Super Combo pack</td>
										<td>Above all tests</td>
										<td><p><strike>Rs: 4000/-</strike></p>
											Rs: 1000/-</td>
										<td>
											<a href="https://www.instamojo.com/Groom4More/super-combo-test-series/"
												rel="im-checkout" data-behaviour="remote" data-style="flat"
												data-text="PURCHASE">
											</a>
										</td>
									</tr>
								</tbody>
							</table>
						</article>
					</div>
					<div class="col-md-4"></div>
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
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/library/jquery-1.11.0.min.js"></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/css/bootstrap/js/bootstrap.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.easing.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.flexslider-min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/prettyphoto/js/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.form.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/init.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/bootbox.min.js'></script>
	<script src="https://d2xwmjc4uy2hr5.cloudfront.net/im-embed/im-embed.min.js"></script>
	<script>
		$('document').ready(function() {
			$('.im-powered-link').html("");
		});
	</script>
</body>
</html>