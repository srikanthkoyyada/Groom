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
<title>Videos - Groom4More</title>

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
	href="<%=request.getContextPath()%>/css/extra.css" type="text/css"
	media="all" />
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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/dataTables.bootstrap.css" type="text/css"
	media="all" />
<style>
.val{
	cursor: pointer;
}
.score-sb ul .val .icon, .score-criteria ul .val .icon {
	background-color: #FFF;
}
.score-sb ul li, .score-criteria ul li {
   border-bottom: 0px;
}
li>a{
   color: inherit;
}
</style>
<style>
.video {
    height: 0;
    position: relative;
    padding-bottom: 56.25%; /* 16/9, to 9/16*100 = 56.25%. take 4/3 - 3/4*100 = 75% */
}
.video iframe {
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
}
</style>
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
</head>
<body>
	<div id="main" class="wrap">

		<jsp:include page="/common/header.jsp"></jsp:include>


		<section class="page-top wrap">

			<h2 class="page-section-title">Videos</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<section class="page-content wrap">
			<div class="container">
				<div class="row">
					<!-- FORM -->
					<div class="col-md-9">
						<article class="blog-post">
							<div class="row" id="all">
								<h3 class="md black">All Videos</h3>
								<jsp:include page="/jsp/videos/all.jsp"></jsp:include>
							</div>
							<div class="row hide" id="math">
								<h3 class="md black">Mathematics</h3>
								<jsp:include page="/jsp/videos/math.jsp"></jsp:include>
							</div>

							<div class="row hide" id="physics">
								<h3 class="md black">Physics</h3>
								<jsp:include page="/jsp/videos/physics.jsp"></jsp:include>
							</div>
							<div class="row hide" id="chemistry">
								<h3 class="md black">Chemistry</h3>
								<jsp:include page="/jsp/videos/chemistry.jsp"></jsp:include>
							</div>
					</article>
				</div>
                <div class="col-md-3">
                    <aside class="blog-sidebar">
                        <!-- WIDGET SEARCH -->
                        <div class="widget widget_search">
                            <h4 class="sm">Search in All Videos</h4>
                            <form>
                                <div class="form-item">
                                    <input type="text" id="mySearchField">
                                    <button type="submit" class="btn btn-info btn-sm"><i class="fa fa-search"></i></button>
                                </div>
                            </form>
                        </div>
                        <!-- END / WIDGET SEARCH -->
                        <!-- WIDGET CATEGORIES -->
                        <div class="score-sb" style="padding-left:0px;">
                            <h4 class="sm" style="font-weight: 700; color: #262626; border-bottom: 1px solid #d4d4d4; padding-bottom: 10px;">Categories</h4>
                            <ul role="tablist">
								<li id="val1"><a><i class="icon"></i>All Videos</a></li>
								<li id="val2"><a><i class="icon"></i>Mathematics</a></li>
								<li id="val3"><a><i class="icon"></i>Physics</a></li>
								<li id="val4"><a><i class="icon"></i>Chemistry</a></li>
							</ul>
                        </div>
                        <!-- END / WIDGET CATEGORIES -->
                    </aside>
                </div>
                <!-- END / SIDEBAR -->
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
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document.write("<script src='<%=request.getContextPath()%>"
					+ "/js/jquery.mobile.custom.min.js'>"
					+ "<"+"/script>");

		$('document').ready(function() {
			var oTable=$('#all_vd').dataTable({
				"sDom": '<"row view-filter"<"col-xs-12"<"pull-right"l><"pull-right"f><"clearfix">>>t<"row view-pager"<"col-xs-12"<"pull-right"ip>>>',
				"aLengthMenu": false,
				"bLengthChange": false,
				"bInfo": false,
				"bLength":false,
				"bFilter":false,
				"iDisplayLength": 3
			});
			$('#mySearchField').keyup(function(){
			      oTable.fnFilter($(this).val()) ;
			})
		});
	</script>
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document.write("<script src='<%=request.getContextPath()%>"
					+ "/js/jquery.mobile.custom.min.js'>"
					+ "<"+"/script>");

		$('document').ready(function() {
			$('#math_vd').dataTable({
				"sDom": '<"row view-filter"<"col-xs-12"<"pull-right"l><"pull-right"f><"clearfix">>>t<"row view-pager"<"col-xs-12"<"pull-right"ip>>>',
				"aLengthMenu": false,
				"bLengthChange": false,
				"bInfo": false,
				"bLength":false,
				"bFilter":false,
				"bSort":false,
			"iDisplayLength": 3
			});
		});
	</script>
	
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document.write("<script src='<%=request.getContextPath()%>"
					+ "/js/jquery.mobile.custom.min.js'>"
					+ "<"+"/script>");

		$('document').ready(function() {
			$('#physics_vd').dataTable({
				"sDom": '<"row view-filter"<"col-xs-12"<"pull-right"l><"pull-right"f><"clearfix">>>t<"row view-pager"<"col-xs-12"<"pull-right"ip>>>',
				"aLengthMenu" : false,
				"bLengthChange" : false,
				"bInfo" : false,
				"bLength" : false,
				"bFilter":false,
				"bSort" : false,
				"iDisplayLength" : 3
			});
		});
	</script>
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document.write("<script src='<%=request.getContextPath()%>"
					+ "/js/jquery.mobile.custom.min.js'>" + "<"+"/script>");

		$('document').ready(function() {
			$('#chemistry_vd').dataTable({
				"sDom": '<"row view-filter"<"col-xs-12"<"pull-right"l><"pull-right"f><"clearfix">>>t<"row view-pager"<"col-xs-12"<"pull-right"ip>>>',
				"aLengthMenu" : false,
				"bLengthChange" : false,
				"bInfo" : false,
				"bLength" : false,
				"bFilter":false,
				"bSort" : false,
				"iDisplayLength" : 3
			});
		});
	</script>
	<script>
		/* script for all videos */
		$('document').ready(function() {
			$('#val1').click(function() {
				$('#all').removeClass('hide');
				$('#math').addClass('hide');
				$('#physics').addClass('hide');
				$('#chemistry').addClass('hide');
			});
			$('#val2').click(function() {
				$('#math').removeClass('hide');
				$('#all').addClass('hide');
				$('#physics').addClass('hide');
				$('#chemistry').addClass('hide');
			});
			$('#val3').click(function() {
				$('#physics').removeClass('hide');
				$('#math').addClass('hide');
				$('#all').addClass('hide');
				$('#chemistry').addClass('hide');
			});
			$('#val4').click(function() {
				$('#chemistry').removeClass('hide');
				$('#math').addClass('hide');
				$('#physics').addClass('hide');
				$('#all').addClass('hide');
			});
		});
	</script>
	<script>
		$('document').ready(function() {
			$('#videos').removeClass();
			$('#videos').addClass('current-menu-item');
		});
	</script>
</body>
</html>