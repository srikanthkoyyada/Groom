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
<link rel="shortcut icon" href="<%=request.getContextPath() %>/images/ico/groom.ico" type="image/x-icon" />
<style>
.nav-tabs li a {
    position: relative;
    display: inline-block;
    margin-right: 30px;
    color: #666;
    border: 0;
    padding-top: 18px;
    padding-bottom: 18px;
}
.list-wrap ul, .nav-tabs {
    margin: 0;
    padding: 0;
    padding-left: 10px;
    list-style: none;
}
.nav-tabs-horizontal>li {
	float: none;
}

.nav-tabs-horizontal>li+li {
	margin-left: 2px;
}

.nav-tabs-horizontal>li, .nav-tabs-horizontal>li>a {
	background: transparent;
	width: 100%;
}

.nav-tabs-horizontal>li>a {
	border-radius: 4px;
}

.nav-tabs-horizontal>li.active>a, .nav-tabs-horizontal>li.active>a:hover,
	.nav-tabs-horizontal>li.active>a:focus {
	color: #ffffff;
	background-color: #428bca;
}

.tab-content {
	border: 1px solid #c5d0dc;
	padding: 16px 12px;
	position: relative;
}
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
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
<title>Videos - Groom4More</title>
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
					<h2 class="text-center">Videos</h2>
				</div>
			</div>
		</section>
		<!-- END / SUB BANNER -->
		<!-- BLOG -->
		<section id="questions" class="questions" style="min-height: 520px;">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="tabs-page" style="margin-right: 25px;">
							<ul class="nav-tabs alert alert-info" role="tablist" style="width: 100%;">
								<li id="allv" class="active"><a href="#all" role="tab"
									data-toggle="tab">All Videos</a></li>
								<li id="mathv"><a href="#math" role="tab" data-toggle="tab">Mathematics</a></li>
								<li id="phyv"><a href="#physics" role="tab" data-toggle="tab">Physics</a></li>
								<li id="chemv"><a href="#chemistry" role="tab" data-toggle="tab">Chemistry</a></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content">
								<div class="tab-pane fade active in" id="all">
									<div id="respond">
										<h3 class="md black">All Videos</h3>
									</div>
									<jsp:include page="/jsp/videos/all.jsp"></jsp:include>
								</div>
								<div class="tab-pane fade" id="math">
									<div id="respond">
										<h3 class="md black">Mathematics</h3>
									</div>
									<jsp:include page="/jsp/videos/math.jsp"></jsp:include>
								</div>

								<div class="tab-pane fade" id="physics">
									<div id="respond">
										<h3 class="md black">Physics</h3>
									</div>
									<jsp:include page="/jsp/videos/physics.jsp"></jsp:include>
								</div>
								<div class="tab-pane fade" id="chemistry">
									<div id="respond">
										<h3 class="md black">Chemistry</h3>
									</div>
									<jsp:include page="/jsp/videos/chemistry.jsp"></jsp:include>
								</div>
							</div>
						</div>
					</div><!-- SIDEBAR -->
                <div class="col-md-3">
                    <aside class="blog-sidebar">
                        <!-- WIDGET SEARCH -->
                        <div class="widget widget_search">
                            <h4 class="sm">Search in All Videos</h4>
                            <form>
                                <div class="form-item">
                                    <input type="text" id="mySearchField">
                                </div>
                                <div class="form-actions">
                                    <input type="submit">
                                </div>
                            </form>
                        </div>
                        <!-- END / WIDGET SEARCH -->
                        <!-- WIDGET CATEGORIES -->
                        <div class="score-sb" style="padding-left:0px;">
                            <h4 class="sm" style="font-weight: 700; color: #262626; border-bottom: 1px solid #d4d4d4; padding-bottom: 10px;">Categories</h4>
                            <ul role="tablist">
								<li class="val1"><a href="#all" role="tab"
									data-toggle="tab"><i class="icon"></i>All Videos</a></li>
								<li class="val2"><a href="#math" role="tab" data-toggle="tab"><i class="icon"></i>Mathematics</a></li>
								<li class="val3"><a href="#physics" role="tab" data-toggle="tab"><i class="icon"></i>Physics</a></li>
								<li class="val4"><a href="#chemistry" role="tab" data-toggle="tab"><i class="icon"></i>Chemistry</a></li>
							</ul>
                        </div>
                        <!-- END / WIDGET CATEGORIES -->
                    </aside>
                </div>
                <!-- END / SIDEBAR -->
            </div>
        </div>
		</section>
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
				"bSort" : false,
				"iDisplayLength" : 3
			});
		});
	</script>
	<script>
		/* script for all videos */
		$('document').ready(function() {
			$('.val').click(function() {
				$(this).removeClass('val');
				$(this).addClass('active');
			});
			$('.val1').click(function() {
				$('.tabs-hr').css({"left":"0px", "width":"71px"});
			});
			$('.val2').click(function() {
				$('.tabs-hr').css({"left":"101.156px", "width":"91px"});
			});
			$('.val3').click(function() {
				$('.tabs-hr').css({"left":"221.859px", "width":"55px"});
			});
			$('.val4').click(function() {
				$('.tabs-hr').css({"left":"306.984px", "width":"72px"});
			});
		});
		/* script for all videos */
		$('document').ready(function() {
			$('#allv').click(function() {
				$('.active').removeClass('active');
				$('.val1').addClass('active');
				$('.val1').removeClass('val1');
			});
			$('#mathv').click(function() {
				$('.active').removeClass('active');
				$('.val2').addClass('active');
				$('.val2').removeClass('val2');
			});
			$('#phyv').click(function() {
				$('.active').removeClass('active');
				$('.val3').addClass('active');
				$('.val3').removeClass('val3');
			});
			$('#chemv').click(function() {
				$('.active').removeClass('active');
				$('.val4').addClass('active');
				$('.val4').removeClass('val4');
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