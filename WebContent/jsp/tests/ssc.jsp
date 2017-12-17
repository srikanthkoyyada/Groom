<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
if (session.getAttribute("user")==null) {

String nxturl=request.getRequestURL().toString();
String redirectPage=nxturl.substring(nxturl.indexOf("/", 21)); 

response.sendRedirect(request.getContextPath()
+ "/jsp/login.jsp?next="+redirectPage+"?"+request.getQueryString());
return;

}
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

<title>SSC | Groom4More</title>

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
			<h2 class="page-section-title">SSC</h2>
		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">
			<div class="container">
				<div class="row">
					<div class="col-sm-7 col-md-8">
						<article class="single-blog-post">
							<h4 class="sm black bold">Introduction</h4>
 							<ol>
 								<li>Each question has four choices (A), (B), (C) and (D) out of which ONLY ONE is correct.</li>
 								<li>For every correct choice marked, 4 marks shall be awarded and 1 mark shall be deducted for a wrong choice marked. If a question
									is not attempted, no marks shall be awarded.</li>
							</ol>
							<p>&nbsp;</p>
							
							<%-- <s:form action="start-board-test"  method="post" cssClass="center" theme="simple">
								<div class="col-md-5">
								<s:select name="catogory" id="category" cssClass="form-control input-md" 
									list="#{'Maths':'Maths', 'Physics':'Physics', 'Chemistry':'Chemistry'}"
									headerKey="" headerValue="Select Subject">
								</s:select></div>
								<div class="col-md-5">
								<s:select name="standard" id="standard" cssClass="form-control input-md" 
									list="#{'7':'Seven', '8':'Eight', '9':'Nine', '10':'Ten'}"
									headerKey="" headerValue="Select Standard">
								</s:select></div>
								<s:hidden name="category" value="maths"></s:hidden>
								<s:hidden name="division" value="1"></s:hidden>
								<s:hidden name="testCategory" value="4"></s:hidden>
								<div class="row">
								<s:submit cssClass="col-md-4 col-md-offset-4 btn-color margin-t24" value="PROCEED"></s:submit></div>
							</s:form> --%>
							
							<s:form action="start-board-test" method="post" align="center"
								theme="simple" styleId="board-form">
								<div class="row">
									<div class="col-md-5">
										<s:select name="category" id="category" cssClass="form-control input-md" 
											list="#{'Maths':'Maths', 'Science':'Science', 'Physics':'Physics', 'Biology':'Biology'}"
											headerKey="" headerValue="Select Subject">
										</s:select>

									</div>
									<div class="col-md-5">
										<s:select name="standard" id="standard" cssClass="form-control input-md" 
											list="#{'6':'Six', '7':'Seven', '8':'Eight', '9':'Nine', '10':'Ten'}"
											headerKey="" headerValue="Select Standard">
										</s:select>
									</div>
								</div>
								
								<s:hidden name="division" value="2"></s:hidden>

								<s:submit cssClass="btn-color margin-t32 hide" id="board-submit"
									value="PROCEED"></s:submit>
							</s:form>
						</article>
					</div>
					<div class="col-md-4">
						<div class="home-feature">
								
							</div>
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
	<script type='text/javascript' src='<%=request.getContextPath()%>/css/bootstrap/js/bootstrap.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.easing.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.flexslider-min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/prettyphoto/js/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.form.min.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/init.js'></script>
	<script src="<%=request.getContextPath()%>/js/jquery.validate.js"></script>
	<script>
		$('document').ready(function() {
			$('#tests').removeClass();
			$('#tests').addClass('current-menu-item');
			
			<%-- $('#standard').change(function() {
				$('#showButton').show();
				var standard= $('#standard').val();
				$('#pdf-object').html('<object data="<%=request.getContextPath()%>/images/eabhyas/'+standard+'-shedule.pdf" style="width:100%; height:600px;" frameborder="0"></object>')
			}); --%>
			
			$('#category').change(function() {
				$('#standard').change(function() {
					$('#board-submit').removeClass('hide');
				});
			});
			$('#standard').change(function() {
				$('#category').change(function() {
					$('#board-submit').removeClass('hide');
				});
			});
			
		});
	</script>
</body>
</html>