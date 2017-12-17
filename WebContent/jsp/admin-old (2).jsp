<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/ico/groom.ico"
	type="image/x-icon" />
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
<title>Admin - Groom4More</title>
</head>
<body id="page-top" class="home">

	<!-- PAGE WRAP -->
	<div id="page-wrap">

		<!-- PRELOADER -->
		<div id="preloader">
			<div class="pre-icon">
				<div class="pre-item pre-item-1"></div>
				<div class="pre-item pre-item-2"></div>
				<div class="pre-item pre-item-3"></div>
				<div class="pre-item pre-item-4"></div>
			</div>
		</div>
		<!-- END / PRELOADER -->

		<!-- HEADER -->
		<jsp:include page="/jsp/admin-header.jsp"></jsp:include>
		<!-- END / HEADER -->

		<section class="sub-banner sub-banner-course">
			<div class="awe-static bg-sub-banner-course"></div>
			<div class="container">
				<div class="sub-banner-content">
					<h2 class="text-center">Welcome Admin</h2>
				</div>
			</div>
		</section>
		<!-- END / SUB BANNER -->


		<!-- BLOG -->
		<section class="blog">
			<div class="container">
				<div class="row">
					<h4>Add Topic to Subject</h4>
					<s:form action="add-subject-topic" method="post" cssClass="center"
						theme="simple" id="add-subject-form">
						<div class="row">
							<div class="col-md-4 form-question">
								<s:select name="category" id="category"
									cssClass="form-control select" tabindex="1"
									list="#{'1':'IIT Foundation','2':'Olympiad'}"
									headerKey="" headerValue="Select Category"></s:select>
							</div>
							<div class="col-md-4 form-question">
								<s:select name="subject" id="subject"
									cssClass="form-control select" tabindex="2"
									list="#{'maths':'Maths','physics':'Physics','chemistry':'Chemistry','grand':'Grand Test'}"
									headerKey="" headerValue="Select Subject"></s:select>
							</div>
							<div class="col-md-4 form-question">
								<s:textfield name="topic" cssClass="form-control"
									placeholder="Topic name" tabindex="3"></s:textfield>
							</div>
							<div class="col-md-4 form-question">
								<s:select name="standard" id="standard" cssClass="form-control"
									tabindex="4"
									list="#{'3':'Third','4':'Fourth','5':'Fifth','6':'Sixth','7':'Seventh','8':'Eigth','9':'Ninth','10':'Tenth'}"
									headerKey="" headerValue="Select Class"></s:select>
							</div>
							<div class="col-md-4 form-question">
								<s:textfield name="testdate" cssClass="form-control" id="testdate"
									placeholder="Test Date" tabindex="5"></s:textfield>
								(Format:yyyy-mm-dd)
							</div>
							<div class="col-md-4 form-question">
								<s:textfield name="test_by" cssClass="form-control" id="test_by"
									placeholder="Test Given BY" tabindex="6"></s:textfield>
								(Only lower case please)
							</div>
							<div class="col-md-4 form-question">
								<s:textfield name="test_time" cssClass="form-control" id="test_time"
									placeholder="Test Time" tabindex="7"></s:textfield>
								(Number of minutes)
							</div>
							<div class="col-md-12 form-group">
								<button class="mc-btn btn-style-1 pull-right" type="submit">ADD</button>
							</div>
						</div>
					</s:form>
					<h4>Add Question to subject-topic</h4>
					<s:form action="add-question-to-topic" method="post"
						cssClass="center" theme="simple" enctype="multipart/form-data">
						<s:fielderror />
						<div class="row">
							<div class="col-md-3 form-question">
								<div id="loadbar" style="display: none; z-index: 999;">
									<div class="blockG" id="rotateG_01"></div>
									<div class="blockG" id="rotateG_02"></div>
									<div class="blockG" id="rotateG_03"></div>
									<div class="blockG" id="rotateG_04"></div>
									<div class="blockG" id="rotateG_05"></div>
									<div class="blockG" id="rotateG_06"></div>
									<div class="blockG" id="rotateG_07"></div>
									<div class="blockG" id="rotateG_08"></div>
								</div>
								<s:select name="subject" id="topic-subject"
									cssClass="form-control" tabindex="1"
									list="#{'maths':'Maths','physics':'Physics','chemistry':'Chemistry','grand':'Grand Test'}"
									headerKey="" headerValue="Select Subject"></s:select>
							</div>
							<div class="col-md-3 form-question">
								<s:select name="topic" id="ques-topic" cssClass="form-control"
									tabindex="2" list="{}" headerKey="" headerValue="Select Topic"></s:select>
							</div>
						</div>
						<div class="row">
							<div class="space-12"></div>
							<h4></h4>
							<div class="col-md-10 form-textarea-wrapper">
								<s:textarea name="question" cols="40" rows="5"
									cssClass="form-control" placeholder="Question here"
									tabindex="4"></s:textarea>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 form-item">
								<s:textfield name="option1" cssClass="form-control"
									placeholder="Option 1" tabindex="5"></s:textfield>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 form-item">
								<s:textfield name="option2" cssClass="form-control"
									placeholder="Option 2" tabindex="6"></s:textfield>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 form-item">
								<s:textfield name="option3" cssClass="form-control"
									placeholder="Option 3" tabindex="7"></s:textfield>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 form-item">
								<s:textfield name="option4" cssClass="form-control"
									placeholder="Option 4" tabindex="8"></s:textfield>
							</div>
						</div>
						<div class="row">
							<div class="col-md-10 form-textarea-wrapper">
								<h4></h4>
								<s:textarea name="explanation" cols="40" rows="5"
									cssClass="form-control" placeholder="Answer Explanation here"
									tabindex="10"></s:textarea>
							</div>
						</div>
						<div class="row">
							<div class="col-md-2 form-question">
								<s:select name="answer" id="answer"
									cssClass="form-control select"
									list="#{'A':'A','B':'B','C':'C','D':'D'}" headerKey=""
									headerValue="Select Answer" tabindex="9"></s:select>
							</div>
						</div>
						<div class="row">
							<h4></h4>
							<div class="col-md-3 upload-drag">
								(Question Image)
								<s:file name="questionImage" label="Select an image to upload"
									cssClass="form-item"></s:file>
							</div>
							<div class="col-md-3"></div>
							<div class="col-md-5 form-group">
								<h4>
									<br>
								</h4>
								<button class="mc-btn btn-style-1" type="submit">ADD</button>
							</div>
						</div>
					</s:form>
				</div>
			</div>
		</section>
		<!-- END / CREATE COURSE CONTENT -->
		<!-- FOOTER -->
		<jsp:include page="/jsp/footer.jsp"></jsp:include>
		<!-- END / FOOTER -->
	</div>
	<!-- END / PAGE WRAP -->

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
	<script src="<%=request.getContextPath()%>/js/quiz.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/countdowntime.js"></script>
	<script type="text/javascript">
	$('document').ready(function(){
		
		 var loading = $('#loadbar').hide();
		$('#topic-subject').change(function(){
			 loading.show();
			$.ajax({
				dataType:"json",
				url:"<%=request.getContextPath()%>/getTopics.action",
				data:{"subject":$(this).val()}
				
				
			}).done(function(response){
				
				if(typeof response ==='object') 
			     {
			        var $select = $('#ques-topic');
			        $select.find('option').remove();
			        $('<option>').val("-1").text("Select").appendTo($select)
			        $.each(response, function(key, value) {
			        $('<option>').val(key).text(value).appendTo($select);
			     });
			     }
				loading.hide();
			});
		});
	});
	</script>
	<script type="text/javascript">
		if ($('.popup-with-zoom-anim').length) {
			$('.popup-with-zoom-anim').magnificPopup({
				type : 'inline',

				fixedContentPos : false,
				fixedBgPos : true,

				overflowY : 'auto',

				closeBtnInside : true,
				preloader : false,

				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-zoom-in'
			});
			$('.design-course-popup').delegate('.cancel', 'click',
					function(evt) {
						evt.preventDefault();
						$('.mfp-close').trigger('click');
					});
		}
	</script>
</body>
</html>