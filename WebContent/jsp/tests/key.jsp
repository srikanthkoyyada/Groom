<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	response.setHeader("Cache-Control",
			"no-cache, no-store, must-revalidate"); // HTTP 1.1
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0
	response.setDateHeader("Expires", 0); // Proxies
%>
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

<title>Key & Score | Groom4More</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]> <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> <![endif]-->

<link
	href='http://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900%7CPacifico'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/extra.css"
	type="text/css" media="all" />
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
.comm-field {
	padding: 8px;
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
			<h2 class="page-section-title">Key &amp; Score</h2>
		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-10 col-md-offset-1">
						<article class="single-blog-post">
							<div class="row">
								<div class="col-md-6" style="text-align: center;">
									<div class="tabred well">
										Total Attempted:
										<s:property value="%{quizPoints.totalAttempted}" />
									</div>
									<div class="tabblue well">
										Right Answers:
										<s:property value="%{quizPoints.points}" />
									</div>
									<div class="tabgreen well">
										Wrong Answers:
										<s:property value="%{quizPoints.wrongAnswers}" />
									</div>
								</div>
								<div class="col-md-6 center">
									<div class="alert alert-info">
										Overall Rank: 97
										<!-- <s:property value="%{userRankBean.rank}" /> -->
										/245
										<!-- <s:property value="%{userRankBean.total_ranks}" /> -->
									</div>
									<div class="alert alert-warning">
										State Rank:
										<!-- <s:property value="%{userStateRank.rank}" /> -->
										54/168
										<!-- <s:property value="%{userStateRank.total_ranks}" /> -->
									</div>
									<div class="alert alert-success">
										City Rank:
										<!-- <s:property value="%{userCityRank.rank}" /> -->
										24/67
										<!-- <s:property value="%{userCityRank.total_ranks}" /> -->
									</div>
								</div>
							</div>
							<hr>
							<div class="row">								
								<div class="container-fluid">
									<div class="col col-md-3">			
										<div class="panel-group" id="accordion">
										  <div class="panel panel-default">
											<div class="panel-heading">
											  <h4 align="center">
												<a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
												TESTS</a>
											  </h4>
											</div>
											<div id="collapse1" class="panel-collapse collapse in">
												<ul class="list-group" align="center" style="margin: 0px;">
													<p>&nbsp;</p>
													<li class="list-group-item"><span class="badge">53</span> Olympiad</li>
													<li class="list-group-item"><span class="badge">27</span> IIT Foundation</li>
													<li class="list-group-item"><span class="badge">30</span> Grand Tests</li>
												</ul>
											</div>
										  </div>
										</div> 
									</div>
									<div class="col col-md-9">
										<div class="row">
											<div class="col col-md-6">
												<h4>Today Stats:</h4>
														Visits<span class="pull-right strong">65%</span>
														 <div class="progress">
															<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="15"aria-valuemin="0" aria-valuemax="100" style="width:65%">65%</div>
														</div>
													
														20 New Users<span class="pull-right strong">30%</span>
														 <div class="progress">
															<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="30"aria-valuemin="0" aria-valuemax="100" style="width:30%">30%</div>
														</div>
													
														79 Quiz Attempts<span class="pull-right strong">45%</span>
														 <div class="progress">
															<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="8"aria-valuemin="0" aria-valuemax="100" style="width:45%">45%</div>
														</div>
											</div>
											<div class="col col-md-6">
												<h4>This Month Stats:</h4>
														Visits<span class="pull-right strong">45%</span>
														 <div class="progress">
															<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="45"aria-valuemin="0" aria-valuemax="100" style="width:45%">45%</div>
														</div>
													
														395 New Users<span class="pull-right strong">57%</span>
														 <div class="progress">
															<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="57"aria-valuemin="0" aria-valuemax="100" style="width:57%">57%</div>
														</div>
													
														593 Quiz Attempts<span class="pull-right strong">45%</span>
														 <div class="progress">
															<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="25"aria-valuemin="0" aria-valuemax="100" style="width:45%">45%</div>
														</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<s:if test="%{questionsList!=null && !questionsList.isEmpty()}">
									<s:iterator value="questionsList" var="question"
										status="status">
										<table class="table-bordered text-justify"
											id="keys">
											<thead>
												<tr>
													<th class="col-md-1">Correction</th>
													<th class="col-md-9">Question : <s:property
															value="%{#status.count}" /></th>
													<th class="col-md-1">Your Answer</th>
													<th class="col-md-1">Right Answer</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td align="center"><s:if
															test="%{(#question.userAnswer)==(#question.answer)}">
															<i class="fa fa-check fa-3x" style="color: GREEN;"></i>
														</s:if> <s:else>
															<i class="fa fa-times-circle fa-3x" style="color: RED;"></i>
														</s:else></td>
													<td class="td-quest"><h6>
															<s:property value="#question.question" escapeHtml="false" />
														</h6>
														<div class="row">
															<s:if
																test="%{#question.image_name!=null && #question.image_name.length()>0}">
																<div class="col-md-9">
																	<div class="row">
																		<span class="col-md-6">(A)<s:property
																				value="#question.option_a" escapeHtml="false" /></span> <span
																			class="col-md-6">(B)<s:property
																				value="#question.option_b" escapeHtml="false" /></span>
																	</div>
																	<br>
																	<div class="row">
																		<span class="col-md-6">(C)<s:property
																				value="#question.option_c" escapeHtml="false" /></span> <span
																			class="col-md-6">(D)<s:property
																				value="#question.option_d" escapeHtml="false" /></span>
																	</div>
																</div>
															</s:if>
															<s:else>
																<div class="col-md-12">
																	<div class="row">
																		<span class="col-md-6">(A)<s:property
																				value="#question.option_a" escapeHtml="false" /></span> <span
																			class="col-md-6">(B)<s:property
																				value="#question.option_b" escapeHtml="false" /></span>
																	</div>
																	<br>
																	<div class="row">
																		<span class="col-md-6">(C)<s:property
																				value="#question.option_c" escapeHtml="false" /></span> <span
																			class="col-md-6">(D)<s:property
																				value="#question.option_d" escapeHtml="false" /></span>
																	</div>
																</div>
															</s:else>
															<s:if
																test="%{#question.image_name!=null && #question.image_name.length()>0}">
																<div class="col-md-3">
																	<img alt="Question-Image"
																		style="height: 100%; width: 100%;"
																		src="<%=request.getContextPath()%>/quiz-images/<s:property value="category"/>/<s:property value="#question.image_name.trim()"/>">
																</div>
															</s:if>
														</div>
													</td>
													<td align="center"><s:property
															value="#question.userAnswer" /></td>
													<td align="center"><s:property
															value="#question.answer" /></td>
												</tr>
											</tbody>
										</table>

									</s:iterator>
								</s:if>
								<s:else>
									<h4>Something went wrong! Sorry for the
										inconvenience.Please try again later</h4>
								</s:else>
							</div>
						</article>
					</div>
				</div>
			</div>
			<!-- container-->

		</div>
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
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document.write("<script src='<%=request.getContextPath()%>"
					+ "/js/jquery.mobile.custom.min.js'>" + "<"+"/script>");

		$('document').ready(function() {
			var oTable = $('#key').dataTable({
				"sDom" : '<"row view-filter"<"col-xs-12"<"pull-right"l><"pull-right"f><"clearfix">>>t<"row view-pager"<"col-xs-12"<"pull-right"ip>>>',
				"aLengthMenu" : false,
				"bLengthChange" : false,
				"bInfo" : false,
				"bLength" : false,
				"bFilter" : false,
				"iDisplayLength" : 10
			});
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