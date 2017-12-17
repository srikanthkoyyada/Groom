<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
	href="<%=request.getContextPath() %>/images/ico/groom.ico"
	type="image/x-icon" />
<style>
p {
	margin: 0 0 0px;
}
.table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td, .table>tbody>tr>td, .table>tfoot>tr>td {
    padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;
    border-top: 0px solid #ddd;
}
</style>
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
<title>Tests - Groom4More</title>
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
		<jsp:include page="/jsp/header.jsp"></jsp:include>
		<!-- END / HEADER -->

		<section class="sub-banner sub-banner-course">
			<div class="awe-static bg-sub-banner-course"></div>
			<div class="container">
				<div class="sub-banner-content">
					<h2 class="text-center">Tests</h2>
				</div>
			</div>
		</section>
		<!-- END / SUB BANNER -->

		<section id="questions" class="questions" style="min-height: 520px;">
			<div class="container">
				<div class="question-content-wrap">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10 blog-list-content" align="center">
							<h4 style="color: #393939;">Please read the following
								instructions carefully before proceed for the test</h4>
							<hr>
							<div class="row alert alert-warning">
								<div class="mc-count-item col-md-4"
									style="padding: 0px !important;">
									<p>
										<span class="countup">Topic</span>
									</p>
								</div>
								<div class="mc-count-item col-md-4"
									style="padding: 0px !important;">
									<p>
										<span class="countup">Status</span>
									</p>
								</div>
								<div class="mc-count-item col-md-4"
									style="padding: 0px !important;">
									<p>
										<span class="countup">Results &amp; Key</span>
									</p>
								</div>
							</div>
							<div class="row" style="text-align: center;">
								<s:if test="%{(topicList.size)>5}">
								<table id="test-topics" class="table table-condensed" style="border: 0px;">	
								</s:if>
								<s:else>
								<table class="table table-condensed" style="border: 0px;">
								</s:else>
									<thead style="display: none;">
										<tr>
											<th></th>
											<th></th>
											<th></th>
										</tr>
									</thead>
									<tbody style="border: 0px;">
										<s:iterator value="topicList" var="topics" status="status">
											<tr>
												<td class="col-md-4 mc-count-item"
													style="border-right: solid 2px #CCC;" align="center">
													<h4>
														<s:property value="#topics.topicName" escapeHtml="false" />
													</h4>
												</td>
												<td class="col-md-4 mc-count-item"
													style="border-right: solid 2px #CCC;" align="center">
													<span> <s:if
															test="%{#topics.isStudentAttempted=='NO'}">
															<s:form action="quiz" method="post" cssClass="center"
																theme="simple">
																<s:hidden name="category" value="%{category}"></s:hidden>
																<s:hidden name="topicid" value="%{#topics.topicId}"></s:hidden>
																<s:hidden name="testDate" value="%{#topics.testDate}"></s:hidden>
																<s:token></s:token>
																<s:submit cssClass="mc-btn-2 btn-style-2"
																	value="Start Test"></s:submit>
															</s:form>
														</s:if> <s:else>
															<h4>Attempted</h4>
														</s:else>
												</span>
												</td>
												<td class="col-md-4 mc-count-item" align="center"><span>
														<s:if test="%{#topics.isStudentAttempted=='YES'}">
															<s:if test="%{#topics.isKeyAndResultAvailable=='YES'}">
																<s:form action="key" method="post" cssClass="center">
																	<s:hidden name="category" value="%{category}"></s:hidden>
																	<s:hidden name="topicid" value="%{#topics.topicId}"></s:hidden>
																	<s:submit cssClass="mc-btn-2 btn-style-1"
																		value="KEY & SCORE"></s:submit>
																</s:form>
															</s:if>
															<s:else>
																<h4>Will be available next day</h4>
															</s:else>
														</s:if> <s:else>
															<h4>Not Applicable</h4>
														</s:else>
												</span></td>
											</tr>
										</s:iterator>
									</tbody>
								</table>
							</div>
							<hr>
						</div>
						<div class="col-md-1"></div>
					</div>
				</div>
			</div>
		</section>
		<!-- END / BLOG -->
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
	<script src="<%=request.getContextPath()%>/js/jquery.dataTables.js"></script>
	<script src="<%=request.getContextPath()%>/js/dataTables.bootstrap.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.dataTables.js"></script>
	<script src="<%=request.getContextPath()%>/js/dataTables.bootstrap.js"></script>
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document.write("<script src='<%=request.getContextPath()%>"
					+ "/js/jquery.mobile.custom.min.js'>" + "<"+"/script>");

		$('document').ready(function() {
			$('#test-topics').dataTable({
				"sDom" : '<"row view-filter"<"col-xs-12"<"pull-right"l><"pull-right"f><"clearfix">>>t<"row view-pager"<"col-xs-12"<"pull-right"ip>>>',
				"aLengthMenu" : false,
				"bLengthChange" : false,
				"bInfo" : false,
				"bLength" : false,
				"bSort" : false,
				"bFilter" : false,
				"iDisplayLength" : 5
			});/* 
			var amountOfRows = $("#test-topics  tbody  tr").length;
			alert(amountOfRows); */
		});
	</script>
	<script>
		$('document').ready(function() {
			$('#tests').removeClass();
			$('#tests').addClass('current-menu-item');
		});
	</script>
</body>
</html>