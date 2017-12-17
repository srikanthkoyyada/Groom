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
<title>Forgot Password - Groom4More</title>

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

			<h2 class="page-section-title">Forgot Password</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<section class="page-content wrap">
			<div class="container">
				<div class="row">
					<!-- FORM -->
					<div class="col-md-6 col-md-offset-3">
						<article class="single-blog-post">
							<div class="form-login">
								<form id="forgot-form">
									<div id="loadbar" style="display: none;">
										<div class="blockG" id="rotateG_01"></div>
										<div class="blockG" id="rotateG_02"></div>
										<div class="blockG" id="rotateG_03"></div>
										<div class="blockG" id="rotateG_04"></div>
										<div class="blockG" id="rotateG_05"></div>
										<div class="blockG" id="rotateG_06"></div>
										<div class="blockG" id="rotateG_07"></div>
										<div class="blockG" id="rotateG_08"></div>
									</div>
									<h4 class="text-uppercase">
										<i class="fa fa-edit"></i>&nbsp;Please Enter Your User name or
										registered mail</h4>
									<hr>
									<div class="form-email">
										<s:actionerror />
										<s:fielderror fieldName="forgotpwdinput" />
										<s:textfield name="forgotpwdinput" cssClass="form-control"
											placeholder="Username/Mail" id="forgotpwd-input"></s:textfield>
									</div>
									<br>
									<div class="row">
										<div class="form-submit col-md-6">
											<s:submit cssClass="btn-color"
												value="Get it Now">
											</s:submit>
										</div>
									</div>
									<hr>
								</form>
							</div>
						</article>
					</div>
				</div>
			</div>
			<!-- container-->
		</section>
		<!-- page-content-->

		<div class="zz-top-foo"></div>
		<div id="myModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- dialog body -->
					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h5 id="pwd-sent-status"></h5>
						<button type="button" class="btn btn-primary pull-right"
							id="modal-dismiss">OK</button>
					</div>
					<!-- dialog buttons -->
				</div>
			</div>
		</div>

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
	<script type="text/javascript">
	 var loading = $('#loadbar').hide();
	$(document).ready(function() {
		
		$('#myModal').on('show.bs.modal', function () {
			$('.modal-content').css('height',100);
			 $('#modal-dismiss').click(function(){
		    	 $("#myModal").modal('hide');
		    });
			});
		   
	    $('#forgot-form').submit(function(event) {
	    	$('input[type="submit"]').prop('disabled', true);
	    	if($('input[name=forgotpwdinput]').val()==""){
	    		alert("Please enter username/mail");
	    		$('input[type="submit"]').prop('disabled', false);
	    		return false;
	    	}
	    	 loading.show();
	        var formData = {
	            'forgotpwdinput' : $('input[name=forgotpwdinput]').val(),
	          
	        };
	        $.ajax({
	            type   : 'POST', 
	            url:'<%=request.getContextPath()%>/forgot-pwd.action',
					data : formData,
					dataType : 'json',
					encode : true
				}).done(function(data) {
					$('#pwd-sent-status').text(data.forgotpwdStstus);
					$('form')[0].reset();
					loading.hide();
					$("#myModal").modal('show');
					$('input[type="submit"]').prop('disabled', false);
				});
				event.preventDefault();
			});

		});
	</script>
</body>
</html>