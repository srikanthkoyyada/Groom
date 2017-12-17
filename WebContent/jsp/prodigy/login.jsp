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
<title>Login | Groom4More</title>

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
<style>
.errorMessage {
	width: 100%;
	color: RED;
	position: relative;
}

.comm-field {
    padding: 8px;
    
    border: 1px solid #e5e5e5;
    background: #f5f5f5;
    color: #707070;
}
label {
	margin-top: 20px;
}
</style>
</head>
<body>
	<div id="main" class="wrap">

		<jsp:include page="/common/header.jsp"></jsp:include>


		<section class="page-top wrap">

			<h2 class="page-section-title"><i class="fa fa-user"></i>&nbsp; User Login</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<section class="page-content wrap">
			<div class="container">
				<div class="row">
					<!-- FORM -->
					<div class="col-md-6 col-md-offset-3">
						<article class="single-blog-post">
							<s:form action="prodigylogin-validate" method="post" cssClass="center"
											theme="simple">
								
								<fieldset class="registration-form">
									<label class="col-md-4">First Name</label>
									<s:actionerror />
									<s:fielderror fieldName="username" />
									<s:textfield name="username" cssClass="comm-field col-md-8"
										placeholder="Username" id="username"></s:textfield>
									
									<label class="col-md-4">Password</label>
									<s:fielderror fieldName="password" />
									<s:password name="password" cssClass="comm-field col-md-8"
										placeholder="Password"></s:password>
									<span class="col-md-8 col-md-offset-4">
										<input type="checkbox" id="check">
											<label for="check">
												<i class="icon md-check-2"></i> Remember me</label>
									</span>
									<p align="center">
										<s:submit cssClass="btn btn-lg btn-primary"
											value="Login">
										</s:submit>
									</p>
									<span class="col-md-6">
										<a href="<%=request.getContextPath() %>/jsp/forgotpassword.jsp">Forgot password?</a>
									</span>
									<span class="col-md-6">
										<a href="<%=request.getContextPath()%>/jsp/registration.jsp">
											<i class="icon md-arrow-right"></i>Don't have account yet ?
											Join Us
										</a>
									</span>
								</fieldset>
							</s:form>
						</article>
					</div>
				</div>
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
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/css/bootstrap/js/bootstrap.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.easing.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.flexslider-min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/prettyphoto/js/jquery.prettyPhoto.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.form.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/init.js'></script>
</body>
</html>