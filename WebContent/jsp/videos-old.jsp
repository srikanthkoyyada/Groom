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
<link rel="shortcut icon" href="<%=request.getContextPath() %>/images/ico/groom.png" type="image/x-icon" />
<style>
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
</style>
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
<title>Videos - Groom4JEE</title>
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
					<div class="col-md-8">
						<div class="tabs-page">
							<ul class="nav-tabs" role="tablist">
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
							<%-- <div id="all_">
									<jsp:include page="/jsp/videos/all.jsp"></jsp:include></div>
							<div id="math_" style="display: none;">
									<jsp:include page="/jsp/videos/math.jsp"></jsp:include></div>
							<div id="physics_" style="display: none;">
									<jsp:include page="/jsp/videos/physics.jsp"></jsp:include></div>
							<div id="chemistry_" style="display: none;">
									<jsp:include page="/jsp/videos/chemistry.jsp"></jsp:include></div> --%>
						</div>
					</div><!-- SIDEBAR -->
                <div class="col-md-3 col-md-offset-1">
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
                        <div class="widget widget_categories">
                            <h4 class="sm">Categories</h4>
                            <ul role="tablist">
								<li id="_all" class="active"><a href="#all" role="tab"
									data-toggle="tab">All Videos</a></li>
								<li id="_math"><a href="#math" role="tab" data-toggle="tab">Mathematics</a></li>
								<li id="_physics"><a href="#physics" role="tab" data-toggle="tab">Physics</a></li>
								<li id="_chemistry"><a href="#chemistry" role="tab" data-toggle="tab">Chemistry</a></li>
							</ul>
                            <!-- <ul>
                                <li id="_all"><a>All</a></li>
                                <li id="_math"><a>Mathematics</a></li>
                                <li id="_physics"><a>Physics</a></li>
                                <li id="_chemistry"><a>Chemistry</a></li>
                                <li><a href="#">Uncategorized</a></li>
                            </ul> -->
                        </div>
                        <!-- END / WIDGET CATEGORIES -->
                        <!-- WIDGET RECENT POST -->
                       <!--  <div class="widget widget_recent_post">
                            <h4 class="sm">Recent posts</h4>
                            <ul>
                                <li>
                                    <a href="#">How to Create Course in this theme? This is title of the blog</a>
                                </li>
                                <li>
                                    <a href="#">Top 10 Design courses of October 2013</a>
                                </li>
                                <li>
                                    <a href="#">Top 10 Design courses of October 2014</a>
                                </li>
                            </ul>
                        </div> -->
                        <!-- END / WIDGET RECENT POST -->

                        <!-- WIDGET TAG CLOUD -->
                       <!--  <div class="widget widget_tag_cloud">
                            <h4 class="sm">Tags</h4>
                            <div class="tagcloud">
                                <a href="#">tag 1</a>
                                <a href="#">tag 2</a>
                                <a href="#">tag 3</a>
                                <a href="#">tag 4</a>
                                <a href="#">tag 5</a>
                            </div>
                        </div> -->
                        <!-- END / WIDGET TAG CLOUD -->
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
			$("#mySearchField").focusin(function () {
				
				$('#all_').show();
				$('#_all').addClass('active');
				$('#math_').hide();
				$('#physics_').hide();
				$('#chemistry_').hide();
		});
			
			$('#_all').click(function() {
				$('#allv').removeClass();
				$('#allv').addClass('active');
			});
			
			/* script for math videos */
				$('#_math').click(function() {
					$('#mathv').addClass('active');
				});
			/* script for physics videos */
				$('#_physics').click(function() {
					$('#phyv').addClass('active');
				});
			/* script for chemistry videos */
				$('#_chemistry').click(function() {
					$('#allv').removeClass('active');
					$('#chemv').addClass('active');
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