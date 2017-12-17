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
<title>Analysis - Groom4More</title>

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

</head>

<body><div id="main" class="wrap">

		<jsp:include page="/common/header.jsp"></jsp:include>

		<section class="page-top wrap">
			<h2 class="page-section-title">Subject, Rank &amp; Score</h2>
		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-12">
						<article class="single-blog-post">
							<div class="row">
								<div class="col-md-6 col-md-offset-1">
									<div class="alert alert-info">Please Wait...</div>
									<div class="alert alert-success" style="display: none;">
										<span class="fa fa-check"></span>&nbsp; Drag table row and
											change Order
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4 col-md-offset-1">
									<h5>Score</h5>
									<div>							
										<table class="table table-striped">
											<thead>
												<tr>
													<th>Subject</th>
													<th>Points</th>
												</tr>
											</thead>
											<tbody>
												<tr class="active">
													<td>Math</td>
													<td><!-- <s:property value="%{subjectAnalysisBean.maths_points}" /> -->123</td>
												</tr>
												<tr class="warning">
													<td>Physics</td>
													<td><!-- <s:property value="%{subjectAnalysisBean.physics_points}" /> -->76</td>
												</tr>
												<tr class="success">
													<td>Chemistry</td>
													<td><!-- <s:property value="%{subjectAnalysisBean.chemistry_points}" /> -->28</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="col-md-6">
									<h5>Rank&nbsp;(Your rank(total ranks))</h5>
									<div align="center">
										<table class="table table-striped">
											<thead>
												<tr>
													<th>Subject</th>
													<th>Overall Rank</th>
													<th>State Rank</th>
													<th>City Rank</th>
												</tr>
											</thead>
											<tr class="warning">
												<td>Maths</td>
												<td><!-- <s:property value="%{subjectAnalysisBean.maths_rank}" /> -->138
													(<s:property value="%{subjectAnalysisBean.total_ranks}" />)</td>
												<td><!-- <s:property value="%{subjectAnalysisByState.maths_rank}" /> -->79
													(<s:property value="%{subjectAnalysisByState.total_ranks}" />)</td>
												<td><!-- <s:property value="%{subjectAnalysisByCity.maths_rank}" /> -->36
													(<s:property value="%{subjectAnalysisByCity.total_ranks}" />)</td>

											</tr>
											<tr class="danger">
												<td>Physics</td>
												<td><!-- <s:property value="%{subjectAnalysisBean.physics_rank}" /> -->347
													(<s:property value="%{subjectAnalysisBean.total_ranks}" />)</td>
												<td><!-- <s:property value="%{subjectAnalysisByState.physics_rank}" /> -->178
													(<s:property value="%{subjectAnalysisByState.total_ranks}" />)</td>
												<td><!-- <s:property value="%{subjectAnalysisByCity.physics_rank}" /> -->99
													(<s:property value="%{subjectAnalysisByCity.total_ranks}" />)</td>
											</tr>
											<tr class="active">
												<td>Chemistry</td>
												<td><!-- <s:property value="%{subjectAnalysisBean.chemistry_rank}" /> -->2278
													(<s:property value="%{subjectAnalysisBean.total_ranks}" />)</td>
												<td><!-- <s:property value="%{subjectAnalysisByState.chemistry_rank}" /> -->1054
													(<s:property value="%{subjectAnalysisByState.total_ranks}" />)</td>
												<td><!-- <s:property value="%{subjectAnalysisByCity.chemistry_rank}" /> -->832
													(<s:property value="%{subjectAnalysisByCity.total_ranks}" />)</td>
											</tr>
										</table>

									</div>
								</div>
							</div>
						</article>
						<!-- blog-post-->

					</div>

				</div>
				<!-- row -->

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
	<script type='text/javascript' src='<%=request.getContextPath()%>/css/bootstrap/js/bootstrap.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.easing.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.flexslider-min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/prettyphoto/js/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.form.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/init.js'></script>
<script>
(function ($) {
    $.fn.extend({
        tableAddCounter: function (options) {

            // set up default options 
            var defaults = {
                title: '#',
                start: 1,
                id: false,
                cssClass: false
            };

            // Overwrite default options with user provided
            var options = $.extend({}, defaults, options);

            return $(this).each(function () {
                // Make sure this is a table tag
                if ($(this).is('table')) {

                    // Add column title unless set to 'false'
                    if (!options.title) options.title = '';
                    $('th:first-child, thead td:first-child', this).each(function () {
                        var tagName = $(this).prop('tagName');
                        $(this).before('<' + tagName + ' rowspan="' + $('thead tr').length + '" class="' + options.cssClass + '" id="' + options.id + '">' + options.title + '</' + tagName + '>');
                    });

                    // Add counter starting counter from 'start'
                    $('tbody td:first-child', this).each(function (i) {
                        $(this).before('<td>' + (options.start + i) + '</td>');
                    });

                }
            });
        }
    });
})(jQuery);

$(document).ready(function () {
    $('.table').tableAddCounter();
    $.getScript("http://code.jquery.com/ui/1.9.2/jquery-ui.js").done(function (script, textStatus) { $('tbody').sortable();$(".alert-info").alert('close');$(".alert-success").show(); });
});
</script>
</body>
</html>