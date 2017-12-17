<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Admin  | Groom4JEE</title>
<link
	href='http://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900%7CPacifico'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/favicon.ico">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap/css/bootstrap.min.css"
	type="text/css" media="all" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/style.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/js/prettyphoto/css/prettyPhoto.css"
	type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/css/css/loading.css"
	rel="stylesheet">
	
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/library/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/library/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/css/md-font.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/css/style.css">
</head>
<!--/head-->
<body>
	<div id="main" class="wrap">
	<jsp:include page="/admin/admin-header.jsp"></jsp:include>
	  <section class="categories-section">
        <div class="container">
            <h3>Welcome Admin</h3>
            <div class="widget widget_categories">
                <div class="row">
                    <ul class="list-unstyled">
                        <li class="col-xs-6 col-sm-4 col-md-2"><a href="<%=request.getContextPath()%>/add-test">Add Test</a></li>
                        <li class="col-xs-6 col-sm-4 col-md-2"><a href="<%=request.getContextPath()%>/select-edit-test">View/Edit Test</a></li>
                       
                    </ul>
                </div>
            </div>
        </div> 
    </section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="zz-top-foo"></div>
		<jsp:include page="/common/footer.jsp"></jsp:include>
		<!--/#footer-->
	</div>
	<!-- main -->

	<div class="scrollup">
		<a class="scrolltop" href="#"> <i class="fa fa-chevron-up"></i>
		</a>
	</div>

	<script src="<%=request.getContextPath()%>/js/js/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/jquery.prettyPhoto.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/main.js"></script>
	
	
</body>
</html>