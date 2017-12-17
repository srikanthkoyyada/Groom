<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.groom.dao.UserDAO"%>
<%@page import="com.groom.bean.User"%>
<%@page import="com.groom.dao.impl.UserDAOImpl"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Welcome - Groom4More</title>

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
	href="<%=request.getContextPath()%>/css/extra.css" type="text/css"
	media="all" />
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

			<h2 class="page-section-title">Welcome</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<section class="page-content wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1">
						<article class="single-blog-post">
							<h3 style="color: #393939;">
								Welcome
								<c:out value="${sessionScope.user.getFirstname() }"></c:out>
							</h3>
							<h4 style="color: #393939;">Logged in successfully</h4>
							<h5 style="color: #393939;">Use the top menu to proceed
								further</h5>
						</article>
					</div>
				</div>
			</div>
			<!-- container-->
		</section>
		<div class="row">
			<!-- Modal -->
			<%-- <div class="modal fade" id="memberModal" tabindex="-1" role="dialog"
				aria-labelledby="memberModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="memberModalLabel">Thank you for
								signing in!</h4>
						</div>
						<div class="modal-body">
							<%
								UserDAO dao = new UserDAOImpl();
								User user = (User) session.getAttribute("user");
								User bean = dao.getUserDetails(user.getUsername());
								if (user.getMail().length()==0 || user.getMobile().length()==0) {
							%>
							<h5>Enter your E-Mail ID and Phone Number here.</h5>
							<p>&nbsp;</p>
							<form id='filter-form'>
								<p><%=user.getMail() %></p>
								<%
									if (user.getMail().isEmpty() || user.getMail() == null) {
								%>
								<label for="email" class="col-md-2 col-md-offset-2">Email</label>
								<input name='email' class='col-md-7' id='email'
									placeholder='Type Your Mail Here' />
								<p>&nbsp;</p>
								<%
									}
										if (user.getMobile().isEmpty() || user.getMobile() == null) {
								%>
								<label for="phone" class="col-md-2 col-md-offset-2">Phone</label>
								<input name='phone' class='col-md-7' id='phone'
									placeholder='Type Your Phone Number Here' />
								<%
									}
								%>
								<p>&nbsp;</p>
								<input type='button'
									class='btn btn-sm btn-success col-md-4 col-md-offset-4'
									id='submit' value='SUBMIT'>
							</form>
							<%
								}
							%>
							<p>&nbsp;</p>
							<h4>Participate in Prodigy Submission</h4>
							<a
								href="<%=request.getContextPath()%>/jsp/prodigy/prodigies.jsp"
								class="btn btn-block btn-info">PARTICIPATE</a>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div> --%>
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


	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<%-- <script type='text/javascript'
		src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script> --%>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/css/bootstrap/js/bootstrap.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.easing.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.flexslider-min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/prettyphoto/js/jquery.prettyPhoto.js'></script>
	<script src="<%=request.getContextPath()%>/js/jquery-ui.js"></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.form.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/init.js'></script>
	<script>
		$('document').ready(function() {
			$('#submit').click(function() {
				$.ajax({
					type: 'POST',
			        url:'<%=request.getContextPath()%>/updateDetails.jsp',

					data : { "mail" : $('#email').val(), "phone" : $('#phone').val() },
					cache : false,
					beforeSend : function() {
								$("body").css("cursor", "progress");
								},
					success : function(result) {
								if (result == 1) {
									alert("Updated Succesfully");
								} else if (result == 0) {
									alert("There seems to be a technical error, Try again later.");
								} else if (result == 2) {
									alert("Please enter details to update.")
								}
							},

					complete : function() {
							$("body").css("cursor", "default");
							//$('#like').attr("disabled", true);
							}
					});
					$("#dialog-msg").addClass('hide');
				});
			});
	</script>
	<script>
		$('document').ready(function() {

			/* setTimeout(function() {		
				$("#dialog-msg").removeClass('hide')
			        $("div.foodchef-tab-menu>div.list-group>a").click(function (e) {	
			            e.preventDefault();
			            $(this).siblings('a.active').removeClass("active");
			            $(this).addClass("active");
			            var index = $(this).index();
			            $("div.foodchef-tab>div.foodchef-tab-content").removeClass("active");
			            $("div.foodchef-tab>div.foodchef-tab-content").eq(index).addClass("active");
					});
			}, 1000) */
			setTimeout(function() {
				$('#memberModal').modal('show');
			}, 1000)
		});
	</script>
</body>
</html>