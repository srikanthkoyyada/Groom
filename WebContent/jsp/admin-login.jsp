<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Admin-Login | Groom4JEE</title>
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
<!--/head-->
<body>
	<div id="main" class="wrap">
		<jsp:include page="/jsp/admin-header.jsp"></jsp:include>
		<section class="page-top wrap">
			<h2 class="page-section-title">Admin</h2>
		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
					<s:form action="admin-login-validate" method="post" cssClass="center"
						theme="simple">
						<div class="col-md-4"></div>
						<fieldset class="col-md-5 registration-form">
							<h4 class="header blue lighter bigger">
								<i class="icon-edit"></i>&nbsp;Please Enter Your Credentials
							</h4>
							<div class="row">
								<div class="col-md-1"></div>
								<div class="col-md-10 form-group">
									<s:actionerror />
									<s:fielderror fieldName="username" />
									<s:textfield name="username" cssClass="form-control"
										placeholder="Username" id="username"></s:textfield>
								</div>
							</div>
							<div class="row">
								<div class="col-md-1"></div>
								<div class="col-md-10 form-group">
									<s:fielderror fieldName="password" />
									<s:password name="password" cssClass="form-control"
										placeholder="Password"></s:password>

									<hr>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
									<s:submit cssClass="btn btn-success btn-md btn-block"
										value="Login">
									</s:submit>
								</div>
								<div class="col-md-4"></div>
							</div>
							
						</fieldset>
					</s:form>
				</div>
			</div>
		</div>
		<jsp:include page="/common/footer.jsp"></jsp:include>
		<!--/#footer-->
	</div>
	<!--/main-->

	<script src="<%=request.getContextPath()%>/js/js/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/jquery.prettyPhoto.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/main.js"></script>
</body>
</html>