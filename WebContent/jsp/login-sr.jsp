<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
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
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
<title>Login - Square Root</title>
</head>
<body id="page-top" class="home">

	<!-- PAGE WRAP -->
	<div id="page-wrap">


		<!-- HEADER -->
		<jsp:include page="/jsp/header.jsp"></jsp:include>
		<!-- END / HEADER -->


		<!-- LOGIN -->
		<section id="login-content" class="login-content">
			<div class="awe-parallax bg-login-content"></div>
			<div class="awe-overlay"></div>
			<div class="container">
				<div class="row">

					<!-- FORM -->
					<div class="col-xs-12 col-lg-4 pull-right">
						<div class="form-login">
							<s:form action="login-validate" method="post" cssClass="center"
			theme="simple">
								<h2 class="text-uppercase">sign in</h2>
								<div class="form-email">
									<s:actionerror />
									<s:fielderror fieldName="username" />
									<s:textfield name="username" cssClass="form-control"
										placeholder="Username" id="username"></s:textfield>
								</div>
								<div class="form-password">
									<s:fielderror fieldName="password" />
									<s:password name="password" cssClass="form-control"
										placeholder="Password"></s:password>
								</div>
								<div class="form-check">
									<input type="checkbox" id="check"> <label for="check">
										<i class="icon md-check-2"></i> Remember me
									</label> <a href="<%=request.getContextPath() %>/jsp/forgotpassword.jsp">Forget password?</a>
								</div>
								<div class="form-submit-1">
									<s:submit cssClass="btn btn-success btn-md btn-block"
										value="Login">
									</s:submit>
								</div>
								<div class="link" style="margin-top:10px;">
									<a href="<%=request.getContextPath()%>/jsp/register.jsp">
										<i class="icon md-arrow-right"></i>Don't have account yet ?
										Join Us
									</a>
								</div>
							</s:form>
						</div>
					</div>
					<!-- END / FORM -->

					<div class="image">
						<img src="<%=request.getContextPath() %>/images/homeslider/img-thumb.png" alt="">
					</div>

				</div>
			</div>
		</section>
		<!-- END / LOGIN -->


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
</body>
</html>