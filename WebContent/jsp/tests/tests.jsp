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
	String type=request.getParameter("type");
     type = type.replace("/","");
%>
<%
if (session.getAttribute("user")==null) {

String nxturl=request.getRequestURL().toString();
String redirectPage=nxturl.substring(nxturl.indexOf("/", 21)); 

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

<title><%=type %> | Groom4More</title>

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
			<h2 class="page-section-title"><%=type %></h2>
		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
					<div class="col-sm-7 col-md-8">
						<article class="single-blog-post">
							<%
								if(type.toString().equalsIgnoreCase("EAMCET")) {
							%>	
							<h4 class="sm black bold">Introduction</h4>
							<h5>A. General:</h5>
							<ol>
								<li>This question paper contains 160 questions.</li>
 							</ol>
 							<h5>B. Question paper format and Marking scheme:</h5>
 							<ol>
 								<li>Each question has four choices (A), (B), (C) and (D) out of which ONLY ONE is correct.</li>
 								<li>For every correct choice marked, 1 marks shall be awarded. If a question
									is not attempted, no marks shall be awarded.</li>
							</ol>
							<% } %>
							<%
								if(type.toString().equalsIgnoreCase("IIT")) {
							%>	
							<h4 class="sm black bold">Introduction</h4>
							<h5>A. General:</h5>
							<ol>
								<li>This question paper contains 90 questions.</li>
 							</ol>
 							<h5>B. Question paper format and Marking scheme:</h5>
 							<ol>
 								<li>Each question has four choices (A), (B), (C) and (D) out of which ONLY ONE is correct.</li>
 								<li>For every correct choice marked, 4 marks shall be awarded and 1 mark shall be deducted for a wrong choice marked. If a question
									is not attempted, no marks shall be awarded.</li>
							</ol>
							<% } %>
							<%
								if(type.toString().equalsIgnoreCase("VITEEE")) {
							%>	<h4 class="sm black bold">Introduction</h4>
							<h5>A. General:</h5>
							<ol>
								<li>This question paper contains 90 questions.</li>
 							</ol>
 							<h5>B. Question paper format and Marking scheme:</h5>
 							<ol>
 								<li>Each question has four choices (A), (B), (C) and (D) out of which ONLY ONE is correct.</li>
 								<li>For every correct choice marked, 4 marks shall be awarded and 1 mark shall be deducted for a wrong choice marked. If a question
									is not attempted, no marks shall be awarded.</li>
							</ol>
							<% } %>
							<%
								if(type.toString().equalsIgnoreCase("BITSAT")) {
							%>	
							<h4 class="sm black bold">Introduction</h4>
							<h5>A. General:</h5>
							<ol>
								<li>This question paper contains 150 questions.</li>
 							</ol>
 							<h5>B. Question paper format and Marking scheme:</h5>
 							<ol>
 								<li>Each question has four choices (A), (B), (C) and (D) out of which ONLY ONE is correct.</li>
 								<li>For every correct choice marked, 3 marks shall be awarded and 1 mark shall be deducted for a wrong choice marked. If a question
									is not attempted, no marks shall be awarded.</li>
							</ol>
							<% } %>
							<%
								if(type.toString().equalsIgnoreCase("SRMEEE")) {
							%>	<h4 class="sm black bold">Introduction</h4>
							<h5>A. General:</h5>
							<ol>
								<li>This question paper contains 120 questions.</li>
 							</ol>
 							<h5>B. Question paper format and Marking scheme:</h5>
 							<ol>
 								<li>Each question has four choices (A), (B), (C) and (D) out of which ONLY ONE is correct.</li>
 								<li>For every correct choice marked, 4 marks shall be awarded and 1 mark shall be deducted for a wrong choice marked. If a question
									is not attempted, no marks shall be awarded.</li>
							</ol>
							<% } %>
							<%
								if(type.toString().equalsIgnoreCase("MIT")) {
							%>	<h4 class="sm black bold">Introduction</h4>
							<h5>A. General:</h5>
							<ol>
								<li>This question paper contains 160 questions.</li>
 							</ol>
 							<h5>B. Question paper format and Marking scheme:</h5>
 							<ol>
 								<li>Each question has four choices (A), (B), (C) and (D) out of which ONLY ONE is correct.</li>
 								<li>For every correct choice marked, 4 marks shall be awarded and 1 mark shall be deducted for a wrong choice marked. If a question
									is not attempted, no marks shall be awarded.</li>
							</ol>
							<% } %>
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
								<s:form action="start-test-category" method="get" align="center"
									theme="simple">
									<s:hidden name="category" value="engg"></s:hidden>
									
									<% 
										if(type.toString().equalsIgnoreCase("EAMCET")) {
									%>	
									<s:hidden name="division" value="1"></s:hidden>
									<% } %>
									<%
										if(request.getParameter("type").toString().equalsIgnoreCase("IIT")) {
									%>	
									<s:hidden name="division" value="2"></s:hidden>
									<% } %>
									<%
										if(request.getParameter("type").toString().equalsIgnoreCase("VITEEE")) {
									%>	
									<s:hidden name="division" value="3"></s:hidden>
									<% } %>
									
									<% 
										if(request.getParameter("type").toString().equalsIgnoreCase("BITSAT")) {
									%>	
									<s:hidden name="division" value="4"></s:hidden>
									<% } %>
									
									<%
										if(request.getParameter("type").toString().equalsIgnoreCase("SRMEEE")) {
									%>	
									<s:hidden name="division" value="5"></s:hidden>
									<% } %>
									<%
										if(request.getParameter("type").toString().equalsIgnoreCase("MIT")) {
									%>	
									<s:hidden name="division" value="6"></s:hidden>
									<% } %>
									
									<s:hidden name="testCategory" value="7"></s:hidden>
									<% 
										MiscDAO miscDAO = new MiscDAOImpl();
										User user = (User) session.getAttribute("user");
										if(miscDAO.isUserSubscribed(user.getUsername(), type)) {
									%>
									<s:submit cssClass="btn-color margin-t32" value="PROCEED"></s:submit>
									<% } else { %>
									<p id="showMessage"></p>
									<% } %>
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
	<script>
		$('document').ready(function() {
			<%-- alert("<%=type%>"); --%>
			$('#tests').removeClass();
			$('#tests').addClass('current-menu-item');
			
			$('#showMessage').ready(function() {
				<%MiscDAO miscDAO = new MiscDAOImpl();
				User user = (User) session.getAttribute("user"); 
				if(miscDAO.isUserSubscribed(user.getUsername(),type)) { %>
					
				<% } else { %>
				setTimeout(function() {	
				
						bootbox.dialog({
						  message: "<p>You are not subscribed for this test category.</p>",
						  title: "<h4 class='center'>Suscribe For Tests</h4>",
				  			buttons: {
				    			success: {
				      				label: "CLICK HERE TO SUBSCRIBE",
				      				className: "btn-success",
				      				callback: function() {
				      					location.href='<%=request.getContextPath()%>/mocks/';
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
			
			
		});
	</script>
</body>
</html>