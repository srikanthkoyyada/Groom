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

<title>Kids Land - Responsive Children HTML5 Template - Contact</title>

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
.comm-field, #msg-contact {
    width: 100%;
    padding: 16px;
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

			<h2 class="page-section-title">Get in Touch</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<section class="page-content wrap">

			<div class="container">

				<div class="row">

					<div class="col-sm-6 col-md-6">

						<div id="contact-form-holder">

							<form method="post" id="contact-form"
								action='<%=request.getContextPath()%>/include/contact-process.php'>

								<label>Name</label>
								<p>
									<input type="text" name="name" class="comm-field" />
								</p>
								<label>Email</label>
								<p>
									<input type="text" name="email" class="comm-field" />
								</p>
								<label>Subject</label>
								<p>
									<input type="text" name="subject" class="comm-field" />
								</p>
								<label>Message</label>
								<p>
									<textarea name="message" id="msg-contact" rows="7"></textarea>
								</p>
								<p class="contact-btn">
									<input type="submit" value="Send message" id="submit-contact" />
								</p>
							</form>
						</div>
						<!-- contact-form-holder-->

						<div id="output-contact"></div>


					</div>
					<!-- col-md-6-->

					<div class="col-sm-6 col-md-6">

						<div class="contact-right">

							<h5 class="widgettitle">Find us:</h5>

							<ul class="contact-social">
								<li><a href="#" target="_blank"><i
										class="fa fa-facebook"></i></a></li>
								<li><a href="#" target="_blank"><i
										class="fa fa-twitter"></i></a></li>
								<li><a href="#" target="_blank"><i
										class="fa fa-google-plus"></i></a></li>
								<li><a href="#" target="_blank"><i
										class="fa fa-linkedin"></i></a></li>
								<li><a href="#" target="_blank"><i
										class="fa fa-pinterest"></i></a></li>
								<li><a href="#" target="_blank"><i
										class="fa fa-youtube"></i></a></li>
								<li><a href="#" target="_blank"><i
										class="fa fa-vimeo-square"></i></a></li>
							</ul>

							<p>GROOM4MORE.com is the best tool for any school student aiming to improve his understanding of various concepts and prepare for tests - boards, school tests, Olympiads, IIT and various other competitive exams. It is our strong belief that technology can help each student improve performance. G4M improves your chances through a structured program</p>

							<ul class="contact-info">
								<li><i class="fa fa-map-marker"></i>Address: 8-2-351/1/9, Road # 3, Lane Beside Times of India, Banjara Hills, Hyderabad - 500 034, Telangana, India</li>
								<li><i class="fa fa-mobile"></i>Phone: +91 95501 14466</li>
								<!-- <li><i class="fa fa-fax"></i>Fax: 000 - 111 - 222</li> -->
								<li><i class="fa fa-envelope"></i>Email: yuva@groom4more.com</li>
							</ul>

							<div class="video-widget">

								<iframe height="400"
									src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1903.3536993233415!2d78.44499472022638!3d17.425824211727576!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb973334bd5579%3A0xc07f4cfb42972a48!2sBojja+IT+Solutions+Pvt+Ltd!5e0!3m2!1sen!2sin!4v1426579447692"></iframe>

							</div>

						</div>
						<!--contact-right-->

					</div>
					<!--col-md-6-->

				</div>
				<!-- row -->

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
	<script type='text/javascript' src='<%=request.getContextPath()%>/css/bootstrap/js/bootstrap.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.easing.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.flexslider-min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/prettyphoto/js/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.form.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/contactform.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/init.js'></script>
	<script>
		$('document').ready(function() {
			$('#about').removeClass();
			$('#about').addClass('current_page_item');
		});
	</script>

</body>
</html>
