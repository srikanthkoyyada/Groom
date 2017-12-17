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
<title>Admin - Groom4JEE</title>
</head>
<body id="page-top" class="home">

	<!-- PAGE WRAP -->
	<div id="page-wrap">


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

		<section id="blog">
			<div class="container">
				<h4>Add Subject Topic</h4>
				<s:form action="add-subject-topic" method="post" cssClass="center"
					theme="simple" id="add-subject-form">
					<div class="row">
						<div class="col-md-3">
							<s:select name="subject" id="subject"
								cssClass="form-control input-md" tabindex="1"
								list="#{'maths':'Maths','physics':'Physics','chemistry':'Chemistry'}"
								headerKey="" headerValue="Select Subject"></s:select>
						</div>
						<div class="col-md-3">
							<s:textfield name="topic" cssClass="form-control input-md"
								placeholder="Topic name" tabindex="2"></s:textfield>
						</div>
						<div class="col-md-3">
							<s:select name="standard" id="standard"
								cssClass="form-control input-md" tabindex="3"
								list="#{'6':'Sixth','7':'Seventh','8':'Eigth','9':'Ninth'}"
								headerKey="" headerValue="Select Class"></s:select>
						</div>
						<div class="col-md-3">
							<s:textfield name="testdate" cssClass="form-control input-md"
								placeholder="Test Date" tabindex="4"></s:textfield>
							(Format:yyyy-mm-dd)
						</div>
						<div class="col-md-12 form-group">
							<button class="btn btn-success btn-md pull-right" type="submit">ADD</button>
						</div>
					</div>

				</s:form>
				<hr>
				<h4>Add Question to subject-topic</h4>
				<s:form action="add-question-to-topic" method="post"
					cssClass="center" theme="simple" enctype="multipart/form-data">
					<s:fielderror />
					<div class="row">
						<div class="col-md-3">
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
								cssClass="form-control input-md" tabindex="1"
								list="#{'maths':'Maths','physics':'Physics','chemistry':'Chemistry'}"
								headerKey="" headerValue="Select Subject"></s:select>
						</div>
						<div class="col-md-3">
							<s:select name="topic" id="ques-topic"
								cssClass="form-control input-md" tabindex="2" list="{}"
								headerKey="" headerValue="Select Topic"></s:select>
						</div>
					</div><div class="col-md-12"></div>
					<div class="row">
						<div class="col-md-10">
							<s:textarea name="question" cols="40" rows="5"
								cssClass="form-control input-md" placeholder="Question here"
								tabindex="4"></s:textarea>
						</div>
					</div><div class="col-md-12"></div>
					<div class="row">	
						<div class="col-md-3">
							<s:textfield name="option1" cssClass="form-control input-md"
								placeholder="Option 1" tabindex="5"></s:textfield>
						</div>
						<div class="col-md-3">
							<s:textfield name="option2" cssClass="form-control input-md"
								placeholder="Option 2" tabindex="6"></s:textfield>
						</div>
						<div class="col-md-3">
							<s:textfield name="option3" cssClass="form-control input-md"
								placeholder="Option 3" tabindex="7"></s:textfield>
						</div>
						<div class="col-md-3">
							<s:textfield name="option4" cssClass="form-control input-md"
								placeholder="Option 4" tabindex="8"></s:textfield>
						</div>
					</div><div class="col-md-12"></div>
					<div class="row">	
						<div class="col-md-2">
							<s:select name="answer" id="answer"
								cssClass="form-control input-md"
								list="#{'A':'A','B':'B','C':'C','D':'D'}" headerKey=""
								headerValue="Select Answer" tabindex="9"></s:select>
						</div>
						<div class="col-md-10">
							<s:textarea name="explanation" cols="40" rows="5"
								cssClass="form-control input-md"
								placeholder="Answer Explanation here" tabindex="10"></s:textarea>
						</div>
					</div><div class="col-md-12"></div>
					<div class="row">	
						<div class="col-md-3">
							(Question Image)
							<s:file name="questionImage" label="Select an image to upload"
								cssClass="form-control input-md"></s:file>
						</div>
						<div class="col-md-9 form-group">
							<button class="btn btn-success btn-md pull-right" type="submit">ADD</button>
						</div>
					</div>
				</s:form>
			</div>
		</section>
		<!--#faqs-->
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
	<script type="text/javascript">
	$('document').ready(function(){
		 var loading = $('#loadbar').hide();
		$('#topic-subject').change(function(){
			 loading.show();
			$.ajax({
				dataType:"json",
				url:"<%=request.getContextPath()%>/getTopics.action",
				data : {"subject" : $(this).val()}
					})
														.done(
																function(
																		response) {

																	if (typeof response === 'object') {
																		var $select = $('#ques-topic');
																		$select
																				.find(
																						'option')
																				.remove();
																		$(
																				'<option>')
																				.val(
																						"-1")
																				.text(
																						"Select")
																				.appendTo(
																						$select)
																		$
																				.each(
																						response,
																						function(
																								key,
																								value) {
																							$(
																									'<option>')
																									.val(
																											key)
																									.text(
																											value)
																									.appendTo(
																											$select);
																						});
																	}
																	loading
																			.hide();
																});
											});
						});
	</script>

</body>
</html>