<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.groom.dao.MiscDAO" %>
<%@ page import="com.groom.dao.impl.MiscDAOImpl" %>
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
<title>Tests | Groom4More</title>

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
	href="<%=request.getContextPath()%>/css/extra.css" type="text/css" media="all" />
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
	<div id="main" class="wrap">

		<jsp:include page="/common/header.jsp"></jsp:include>


		<section class="page-top wrap">

			<h2 class="page-section-title">Tests</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<section class="page-content wrap">

			<div class="container">

				<div class="row">
					<div class="col-md-10 col-md-offset-1" align="center">
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
														<s:form action="enggquiz" method="post" cssClass="center"
															theme="simple">
															<s:hidden name="category" value="%{category}"></s:hidden>
															<s:hidden name="topicid" value="%{#topics.topicId}"></s:hidden>
															<s:hidden name="testDate" value="%{#topics.testDate}"></s:hidden>
															<s:token></s:token>
															<s:submit cssClass="btn-color"
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
															<s:submit cssClass="btn btn-info"
																value="KEY & SCORE"></s:submit>
														</s:form>
													</s:if>
													<s:else>
														<h4>Will be available next day</h4>
													</s:else>
												</s:if>
												<s:else>
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