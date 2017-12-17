<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
<link href="<%=request.getContextPath()%>/css/quiz.css" rel="stylesheet">
<style>
.question-sidebar .title-sb span {
	float: left;
}
.val{
	cursor: pointer;
}
.score-sb ul .val .icon, .score-criteria ul .val .icon {
	background-color: #FFF;
}
.question-content-wrap .question-content .answer .answer-list li label {
    font-size: 16px;
    color: #666;
    cursor: pointer;
    line-height: 1.5em;
}
</style>
<style>
/* new style */
.ps-scrollbar-y-rail-2 {
top: 200px; height: 368px; display: inherit; right: 0px;
}

.ps-scrollbar-y-2 {
top: 96px; height: 150px;
}

.ps-scrollbar-x-2 {
left: 0px; width: 150px;
}

.ps-scrollbar-x-rail-2 {
width: 326px; display: inherit; left: 0px;
}
</style>
<link rel="shortcut icon" href="<%=request.getContextPath() %>/images/ico/groom.ico" type="image/x-icon" />
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
	<script src="<%=request.getContextPath()%>/js/quiz.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/countdowntime.js"></script>
<script type="text/javascript">
	$('document').ready(function(){
		
		$('.question-div').hide();
		$('#previous-q').hide();
		
		$('#next-q').click(function() {
			$('.question-div').hide();
			$('#questionNumber').val(parseInt($('#questionNumber').val()) + 1);
			$('#qid'+ parseInt($('#questionNumber').val())).show();
			$('#previous-q').show();
			$('.active').addClass('val');
			$('.active').removeClass('active');
			$('#q'+parseInt($('#questionNumber').val())).removeClass('val');
			$('#q'+parseInt($('#questionNumber').val())).addClass('active');
			if(parseInt($('#questionNumber').val())==1){
				$('#previous-q').hide();
			}if(parseInt($('#questionNumber').val())>1){
				$('#previous-q').show();
			}if(parseInt($('#questionNumber').val())==20){
				$('#next-q').hide();
			}if(parseInt($('#questionNumber').val())<20){
				$('#next-q').show();
			}
			/* scroll list */
			if(parseInt($('#questionNumber').val())>=8){
				$('#scr').scrollTop('#q8');
			}
			/* scroll list */
		});
		$('#previous-q').click(function() {
			$('.question-div').hide();
			$('#questionNumber').val(parseInt($('#questionNumber').val()) - 1);
			$('#qid'+ parseInt($('#questionNumber').val())).show();
			$('.active').addClass('val');
			$('.active').removeClass('active');
			$('#q'+parseInt($('#questionNumber').val())).removeClass('val');
			$('#q'+parseInt($('#questionNumber').val())).addClass('active');
			if(parseInt($('#questionNumber').val())==1){
				$('#previous-q').hide();
			}if(parseInt($('#questionNumber').val())>1){
				$('#previous-q').show();
			}if(parseInt($('#questionNumber').val())==20){
				$('#next-q').hide();
			}if(parseInt($('#questionNumber').val())<20){
				$('#next-q').show();
			}
			/* scroll list */
			if(parseInt($('#questionNumber').val())>=8){
				$('#scr').scrollTop('#q8');
			}
			/* scroll list */
		});
		
		$('#finish').click(function() {
			$('#questionNumber').val(1);
			$('#quiz-form').submit();
		});
		 timer = new _timer(function(time) {
			if (time == 0) {
				timer.stop();
				$('#time-taken').val($('.timer').text());
				
				alert("Quiz time is over click ok to submit");
				
				$('#quiz-form').submit();
			}
		});
		
		timer.reset(40*60);
		timer.mode(0);
		timer.start(); 
		$('#quiz-form').submit(function(){
			$('#time-taken').val($('.timer').text());
		
			
			return true;
		});				
	});
	$('document').ready(function() {
		$('.val').click(function() {
			var qid=$(this).attr('id').substring(1,$(this).attr('id').length);
			$('.question-div').hide();
			$('#questionNumber').val(parseInt(qid));
			$('#qid'+ parseInt(qid)).show();
			$('.active').addClass('val');
			$('.active').removeClass('active');
			$(this).addClass('active');
			$(this).removeClass('val');
			if(parseInt($('#questionNumber').val())==1){
				$('#previous-q').hide();
			}if(parseInt($('#questionNumber').val())>1){
				$('#previous-q').show();
			}if(parseInt($('#questionNumber').val())==20){
				$('#next-q').hide();
			}if(parseInt($('#questionNumber').val())<20){
				$('#next-q').show();
			}
			/* scroll list */
			if(parseInt($('#questionNumber').val())>=8){
				var topPos = document.getElementById('q6').offsetTop;
			  	document.getElementById('scr').scrollTop = topPos-10;
			}
			/* scroll list */
		});if(parseInt($('#questionNumber').val())==1){
			$('#q1').removeClass('val');
			$('#q1').addClass('active');
		}
	});
	</script>
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
<title>Quiz - Groom4More</title>
<style type="text/css">
.question-sidebar .title-sb span{
float: left;
}
</style>
</head>
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
					<h2 class="text-center">Quiz</h2>
				</div>
			</div>
		</section>
		<!-- END / SUB BANNER -->


		<!-- BLOG -->
		<section id="questions" class="questions" style="padding-top: 0px;">
			<div class="container">

				<div class="title-ct">
					<h3 class="col-md-10">
						<strong>Quiz : <s:property value="#maths.topicName"/></strong>
					</h3>
					<div class="tt-right col-md-2">
						<a href="<%=request.getContextPath() %>/jsp/abhyas.jsp" target="_blank">
							<s:if test="%{!questionsList.isEmpty()}">
								<img style="padding-top: 15px; padding-bottom: 0px;" src="<%=request.getContextPath() %>/images/abhyas.jpg">
							</s:if>
						</a>
					</div>
				</div>
				<div class="question-content-wrap">
					<div class="row">
						<div class="col-md-8">
							<s:if test="%{!questionsList.isEmpty()}">
								<s:form action="quiz-submit" method="POST" id="quiz-form"
									theme="simple">
									<input type="hidden" name="category"
											value="<s:property value="category"/>">
									<s:iterator value="questionsList" var="question"
											status="status">
											<s:set var="topic_id" value="#question.topicid" />
									<div class="question-content question-div alert alert-info" style="min-height: 480px; padding: 25px;"
										id="qid<s:property value="%{#status.count}"/>">
										<h4 class="sm">Question <s:property	value="%{#status.count}" /> :
										</h4>
											<h4>
												<s:property value="#question.question" escapeHtml="false"/>
											</h4>
											<input type="hidden"
												name="qno<s:property value="%{#status.count}"/>"
												value="<s:property value="#question.q_id"/>">
											<div class="row">
												<div class="col-md-6">
													<div class="answer">
														<ul class="answer-list">
															<li><h4 class="sm">
																<input type="radio"
																name="q<s:property value="%{#status.count}"/>"
																value="A" style="display: none;" id="radio-1-<s:property value="%{#status.count}"/>"> <label
																for="radio-1-<s:property value="%{#status.count}"/>"> <i class="icon icon_radio"></i> <s:property
																		value="#question.option_a" escapeHtml="false"/>
															</label></h4></li>
															<li><h4 class="sm"><input type="radio"
																name="q<s:property value="%{#status.count}"/>"
																value="B" style="display: none;" id="radio-2-<s:property value="%{#status.count}"/>"> <label
																for="radio-2-<s:property value="%{#status.count}"/>"> <i class="icon icon_radio"></i> <s:property
																		value="#question.option_b" escapeHtml="false"/>
															</label></h4></li>
															<li><h4 class="sm"><input type="radio"
																name="q<s:property value="%{#status.count}"/>"
																value="C" style="display: none;" id="radio-3-<s:property value="%{#status.count}"/>"> <label
																for="radio-3-<s:property value="%{#status.count}"/>"> <i class="icon icon_radio"></i> <s:property
																		value="#question.option_c" escapeHtml="false"/>
															</label></h4></li>
															<li><h4 class="sm"><input type="radio"
																name="q<s:property value="%{#status.count}"/>"
																value="D" style="display: none;" id="radio-4-<s:property value="%{#status.count}"/>"> <label
																for="radio-4-<s:property value="%{#status.count}"/>"> <i class="icon icon_radio"></i> <s:property
																		value="#question.option_d" escapeHtml="false"/>
															</label></h4></li>
														</ul>

													</div>
												</div>
												<div class="col-md-6">
													<s:if
														test="%{#question.image_name!=null && #question.image_name.length()>0}">
														<img alt="Question-Image" style="v-align: middle;"
															src="<%=request.getContextPath()%>/quiz-images/<s:property value="category"/>/<s:property value="#question.image_name.trim()"/>">
													</s:if>
												</div>
											</div>
										</div>
									</s:iterator>
									<div style="padding-left: 10px;">
										<button type="button" id="previous-q" class="mc-btn btn-style-1">Previous
											Question</button>
										<button type="button" id="next-q" class="mc-btn btn-warning pull-right">Next
											Question</button>
									</div>
									<s:token></s:token>
									<s:hidden name="timetaken" id="time-taken"></s:hidden>
									<s:hidden name="topicid" value="%{#topic_id}" id="topic-id"></s:hidden>
									<s:hidden name="testDate" value="%{testDate}"></s:hidden>
								</s:form>
							</s:if>
							<s:else>
								<h4>Questions to this topic will be added soon.Please come
									back again</h4>
							</s:else>
						</div>
						
						<s:if test="%{!questionsList.isEmpty()}">
						<div class="col-md-4">
							<aside class="question-sidebar" style=" height:min-height: 430px !important;">
								<div class="score-sb">
									<div class="title-sb sm bold">
										<span class="pull-left">Time</span>	
										<div class="timer pull-right">
											<span class="hour">00</span><span>:</span><span class="minute">00</span><span>:</span><span
											class="second">00</span></div>										
									</div>
									<ul id="scr">
										<li id="q1" class="val"><i class="icon"></i>Question 1<span>20</span></li>
										<li id="q2" class="val"><i class="icon"></i>Question 2<span>20</span></li>
										<li id="q3" class="val"><i class="icon"></i>Question 3<span>20</span></li>
										<li id="q4" class="val"><i class="icon"></i>Question 4<span>20</span></li>
										<li id="q5" class="val"><i class="icon"></i>Question 5<span>20</span></li>
										<li id="q6" class="val"><i class="icon"></i>Question 6<span>20</span></li>
	                                    <li id="q7" class="val"><i class="icon"></i>Question 7<span>20</span></li>
	                                    <li id="q8" class="val"><i class="icon"></i>Question 8<span>20</span></li>
	                                    <li id="q9" class="val"><i class="icon"></i>Question 9<span>20</span></li>
	                                    <li id="q10" class="val"><i class="icon"></i>Question 10<span>20</span></li>
	                                    <li id="q11" class="val"><i class="icon"></i>Question 11<span>20</span></li>
	                                    <li id="q12" class="val"><i class="icon"></i>Question 12<span>20</span></li>
	                                    <li id="q13" class="val"><i class="icon"></i>Question 13<span>20</span></li>
	                                    <li id="q14" class="val"><i class="icon"></i>Question 14<span>20</span></li>
	                                    <li id="q15" class="val"><i class="icon"></i>Question 15<span>20</span></li>
	                                    <li id="q16" class="val"><i class="icon"></i>Question 16<span>20</span></li>
	                                    <li id="q17" class="val"><i class="icon"></i>Question 17<span>20</span></li>
	                                    <li id="q18" class="val"><i class="icon"></i>Question 18<span>20</span></li>
	                                    <li id="q19" class="val"><i class="icon"></i>Question 19<span>20</span></li>
	                                    <li id="q20" class="val"><i class="icon"></i>Question 20<span>20</span></li>
									</ul>
								</div>
							<input type="submit" id="finish" value="Submit all answer"
								class="submit mc-btn btn-style-2">
						</aside>
					</div></s:if>
				</div>
			</div>
		</div>
	</section>
	<input type="hidden" name="question_number" id="questionNumber"
		value="1">
		<!-- END / quiz -->
		<!-- FOOTER -->
		<jsp:include page="/jsp/footer.jsp"></jsp:include>
		<!-- END / FOOTER -->
	</div>
	<!-- END / PAGE WRAP -->
	
	<script type="text/javascript">
		$('document').ready(function(){
			$('#qid1').show();
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