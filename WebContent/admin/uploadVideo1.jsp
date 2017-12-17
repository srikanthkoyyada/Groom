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
<title>Upload Video | Groom4More</title>

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
	color: RED;
	position: relative;
}

.comm-field {
    padding: 8px;
    margin-top: 8px;
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

			<h2 class="page-section-title"><i class="fa fa-video-camera"></i>&nbsp; Upload Video</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<section class="page-content wrap">
			<div class="container">
				<div class="row">
					<!-- FORM -->
					<div class="col-md-8 col-md-offset-2">
						<article class="single-blog-post">
							<s:form action="uploadVideo" method="post"
								cssClass="center" theme="simple">
								<fieldset class="col-md-12 registration-form">
									<!-- <h2 class="text">
										<i class="fa fa-user"></i>&nbsp; New User Registration
									</h2> -->
									<s:actionerror />
									<div class="row">
										
										<label class="col-md-4">Subject</label>
										<p><s:select name="subject"
											cssClass="comm-field col-md-8 select" id="subject"
											list="#{'Maths':'Maths','Physics':'Physics','Chemistry':'Chemistry'}"
											headerKey="" headerValue="Select Subject">
										</s:select>
										<s:fielderror fieldName="subject" /></p>
										
										<label class="col-md-4">Title</label>
										<p><s:textfield name="title" cssClass="comm-field col-md-8"
											type="text" placeholder="Tilte Here" id="title"></s:textfield>
										<s:fielderror fieldName="title" /></p>
										
										<label class="col-md-4">Description</label>
										<p><s:textarea name="description" cssClass="comm-field col-md-8"
											placeholder="Description" id="description"></s:textarea>
										<s:fielderror fieldName="description" /></p>
										
										<label class="col-md-4">URL</label>
										<p><s:textfield name="url" cssClass="comm-field col-md-8"
											type="text" placeholder="Video URL" id="url"></s:textfield>
										<s:fielderror fieldName="url" /></p>
									
									</div>
									<div class="row">
										<div class="col-md-12">
											<p>&nbsp;</p>
											<p align="center"><input type="submit" value="SUBMIT VIDEO" class="btn-color"></p>
										</div>
									</div>
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
	<script src="<%=request.getContextPath()%>/js/county-state.js"></script>
	<script type="text/javascript">
		$('document').ready(function(){
			populateCountries("country", "state");
			populateStates("country", "state");
			$('#username').blur(function(){
				$.ajax({
					dataType:"json",
					url:"<%=request.getContextPath()%>/checkUsername.action",
					data:{"username":$('#username').val()},
					
					
				}).done(function(response){
					if(response.isUsernameAvailable=="NO"){
						$('#username').val("");
						$('#username-valid').addClass('alert alert-danger');
						$('#username-valid').html("username is not available.Please choose another");
					}else{
						$('#username-valid').removeClass();
						$('#username-valid').empty();
					}
				});
			});
			$('#mail').blur(function(){
				$.ajax({
					dataType:"json",
					url:"<%=request.getContextPath()%>/checkMail.action",
					data:{"mail":$('#mail').val()},
					
					
				}).done(function(response){
					if(response.isMailAvailable=="NO"){
						$('#mail').val("");
						$('#mail-valid').addClass('alert alert-danger');
						$('#mail-valid').html("Mail is already registered");
					}else{
						$('#mail-valid').removeClass();
						$('#mail-valid').empty();
					}
				});
			});
			$('#mobile').blur(function(){
				$.ajax({
					dataType:"json",
					url:"<%=request.getContextPath()%>/checkPhone.action",
					data:{"phone":$('#mobile').val()},
					
					
				}).done(function(response){
					if(response.isPhoneNumberAvailable=="NO"){
						$('#mobile').val("");
						$('#mobile-valid').addClass('alert alert-danger');
						$('#mobile-valid').html("Phone number is already registered");
					}else{
						$('#mobile-valid').removeClass();
						$('#mobile-valid').empty();
					}
				});
			});
			
		});
	</script>
</body>
</html>