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
<style>
body {
	line-height: 1.5;
	font-size: 18px;
	font-family: Comic Sans MS;
}
p {
	font-family: Comic Sans MS;
	font-size: 18px;
	color: #393939;
	line-height: 1.7em;
}
</style>
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/ico/groom.ico"
	type="image/x-icon" />
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
<title>Key & Score - Groom4More</title>
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
					<h2 class="text-center">Key & Score</h2>
				</div>
			</div>
		</section>
		<!-- END / SUB BANNER -->
		<section id="questions" class="questions" style="min-height: 520px;">
			<div class="container">
				<div class="row">
					<div class="question-content-wrap">
						<div class="question-content">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<div class="row" style="text-align: center;">
									<div class="col-md-4 tabred well">
										Total Attempted:
										<s:property value="%{quizPoints.totalAttempted}" />
									</div>
									<div class="col-md-4 tabblue well">
										Right Answers:
										<s:property value="%{quizPoints.points}" />
									</div>
									<div class="col-md-4 tabgreen well">
										Wrong Answers:
										<s:property value="%{quizPoints.wrongAnswers}" />
									</div>
								</div>
								<h5>Rank&nbsp;(Your rank/total ranks)</h5>
								<div class="row center">
									<div class="col-md-4 alert-info">Overall:
										<s:property value="%{userRankBean.rank}" /> / <s:property
											value="%{userRankBean.total_ranks}" />
									</div>
									<div class="col-md-4 alert-warning">State:
										<s:property	value="%{userStateRank.rank}" /> / <s:property
											value="%{userStateRank.total_ranks}" />
									</div>
									<div class="col-md-4 alert-success">City: 
								 		<s:property value="%{userCityRank.rank}" /> / <s:property
											value="%{userCityRank.total_ranks}" />
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<s:if test="%{questionsList!=null && !questionsList.isEmpty()}">
									<s:iterator value="questionsList" var="question"
										status="status">
										<table class="table-question table-bordered">
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
													<td><s:if
															test="%{(#question.userAnswer)==(#question.answer)}">
															<i class="icon icon-val md-check-2"></i>
														</s:if> <s:else>
															<i class="icon icon-err md-close-2"></i>
														</s:else></td>
													<td class="td-quest"><h5>
															<s:property value="#question.question" escapeHtml="false" />
														</h5>
														<div class="row">
															<s:if
																test="%{#question.image_name!=null && #question.image_name.length()>0}">
																<div class="col-md-9">
															</s:if>
															<s:else>
																<div class="col-md-12">
															</s:else>
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
														</div> <s:if
															test="%{#question.image_name!=null && #question.image_name.length()>0}">
															<div class="col-md-3">
																<img alt="Question-Image" class="col-md-4"
																	style="height: 100%; width: 100%;"
																	src="<%=request.getContextPath()%>/quiz-images/<s:property value="category"/>/<s:property value="#question.image_name.trim()"/>">
															</div>
														</s:if>
														</div></td>
													<td><s:property value="#question.userAnswer" /></td>
													<td><s:property value="#question.answer" /></td>
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
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/#quiz-submission-->
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
	<script>
		$('document').ready(function() {
			$('#tests').removeClass();
			$('#tests').addClass('current-menu-item');
		});
	</script>
</body>
</html>