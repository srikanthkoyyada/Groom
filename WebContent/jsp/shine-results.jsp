<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shine Results Search | Groom4More</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="keywords"
	content="Iit online exams, Iit skill tests, Mathematics skill tests, Science skill tests, Mathematics Olympiad tests,
		National Science Olympiad tests, Online iit tests, Best Educational videos, Best science videos, Online maths tests, 
		Online mathematics tests, Online science tests, Online physics tests, Online iit maths exam, Online iit science exam">
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
<link rel="shortcut icon" href="<%=request.getContextPath() %>/images/ico/groom.ico" type="image/x-icon" />
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
</head>
<!--/head-->
<body id="page-top" class="home">
	<!-- PAGE WRAP -->
	<div id="page-wrap">
		<!-- HEADER -->
		<jsp:include page="/jsp/header.jsp"></jsp:include>
		<!-- END / HEADER -->

		<section class="sub-banner sub-banner-course">
			<div class="awe-static bg-sub-banner-course"></div>
			<div class="container">
				<div class="sub-banner-content">
					<h2 class="text-center">Shine Result- Search</h2>
				</div>
			</div>
		</section>
		<!-- END / SUB BANNER -->
		<!-- BLOG -->
			<section class="blog" style="min-height: 520px;">
			<div class="container">
				<div class="row">

					<!-- BLOG LIST -->
					<div class="col-md-8">
				
				<s:form action="shine-result" method="post" cssClass="center" theme="simple">
			
			<fieldset class="col-md-8 col-md-offset-4 registration-form">
				<span><strong>Please fill the details and click on get result to view your scores </strong></span>
				<hr>
				<div class="row"> 
					
					<div class="col-md-10 form-group">
						<s:select name="school" id="school" cssClass="form-control"
							tabindex="1" list="#{'1':'pragathi','2':'mothers (ramnagar)','3':'Vmhs','4':'iict','5':'satya sai vidya vihar','6':'chaitanya bharathi','7':'st maries karmangat','8':'st anns malkajgiri','9':'inspire miriyalaguda','10':'jyothi miriyalaguda','11':'aryan miriyalaguda','12':'sri chaitanya miriyalaguda','13':'city central miriyalaguda','14':'silver moon','15':'sri prakash','51':'tapovan','81':'vasanth valley','701':'vikas','82':'neo royal','30':'mothers OU','807':'silver drop','87':'st maries vidyaniketan','86':'vidya bharathi high school','85':'vivekananda high school','84':'sri triveni','88':'vignyana bharathi high school'}" headerKey="" headerValue="Select School Studying"></s:select>
							<s:fielderror fieldName="school"/>
					</div> 
				</div>
				<div class="row">
					<div class="col-md-10 form-group">
					<s:select name="standard" id="standard" cssClass="form-control"
							tabindex="2" list="#{'7':'Seventh','8':'Eight','9':'Ninth','10':'Tenth'}" headerKey="" headerValue="Select Class Studying"></s:select>
							<s:fielderror fieldName="standard"/>
						
					</div>
					
				</div>
				<div class="row"> 
					
					<div class="col-md-10 form-group">
						<s:actionerror />
						<s:fielderror fieldName="rollnumber" />
						<s:textfield name="rollnumber" cssClass="form-control" tabindex="3"
							placeholder="Enter Roll Number" id="rollnumber"></s:textfield>
							<hr>
					</div>
				</div>
				
				<div class="row">
					
					<div class="col-md-7">
						<s:submit cssClass="btn btn-info btn-md btn-block"
							value="Get Result">
						</s:submit>
					</div>
					
				</div>
				
			</fieldset>
		</s:form>
		<%-- <div><h1>(OR)</h1></div>
		<s:form action="" method="post" cssClass="center" theme="simple">
			
			<fieldset class="col-md-4 col-md-offset-1 registration-form">
				
				<div class="row">
					<div class="col-md-10 form-group">
					<s:select name="standard" id="standard" cssClass="form-control"
							tabindex="7" list="#{'7':'Seventh','8':'Eight','9':'Ninth','10':'Tenth'}" headerKey="" headerValue="Select Class Studying"></s:select>
							<s:fielderror fieldName="standard"/>
						
					</div>
					
				</div>
				<div class="row">
					
					<div class="col-md-10 col-md-1 form-group">
						<s:textfield name="name" cssClass="form-control"
							placeholder="Enter Your Name" id="name"></s:textfield>

						<hr>
					</div>
				</div>
				<div class="row">
					
					<div class="col-md-4 col-md-offset-1">
						<s:submit cssClass="btn btn-info btn-md btn-block"
							value="Get Result">
						</s:submit>
					</div>
					
				</div>
				
			</fieldset>
		</s:form>
 --%>	
				
				</div>
			</div></div>
		</section>
		<!-- END / BLOG -->
		<!-- FOOTER --></div>
		<jsp:include page="/jsp/footer.jsp"></jsp:include>
		<!-- END / FOOTER -->
	
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