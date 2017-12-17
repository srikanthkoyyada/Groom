<%@page import="com.groom.dao.MiscDAO"%>
<%@page import="com.groom.dao.impl.MiscDAOImpl"%>
<%@page import="com.groom.bean.User"%>
<%@page import="com.groom.service.UserService"%>
<%@page import="com.groom.service.impl.UserServiceImpl"%>
<%@page import="com.groom.bean.ProdigyBean"%>
<%@page import="com.groom.util.GroomUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	
	MiscDAO dao=new MiscDAOImpl();
	//dao.saveProdigyVisit(id);
	ProdigyBean bean=dao.getProdigyContent(id);
	if(session.getAttribute("user")!=null){
		User user = (User) session.getAttribute("user");
		UserService userService = new UserServiceImpl();
		String votinguser=user.getUsername();
		//int userid=userDetailsDAO.getUserId(bean.getUsername());
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

<title>Prodigies Entry | Groom4More</title>

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
<style>
.comm-field, #msg-contact {
    width: 100%;{
    width: 100%;
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

			<h2 class="page-section-title">Prodigies Entry</h2>

		</section>
		<!-- page-top -->
		<div class="zz-bottom"></div>

		<div class="page-content wrap">

			<div class="container">

				<div class="row">

					<div class="col-sm-7 col-md-8">

						<article class="single-blog-post">

							<%-- <img class="img-responsive margin-b32"
								src="<%=request.getContextPath()%>/images/blog/blog-1.jpg" alt="" /> --%>

							<div class="clearfix margin-b32">

								<%-- <div class="date-meta">
									<span class="date-big"><%=bean.getPostedDate()%></span>
									<span class="date-small"><%=bean.getPostedDate()%></span>
								</div> --%>
								<!-- end date-meta -->

								<div class="blog-title" style="margin-left: 0px;">

									<h4><%=bean.getTitle() %>
										<!-- <span class="pull-right">
											<a class="btn btn-primary" id="vote" style="color: #FFF;">
												<i class="fa fa-thumbs-up bigger-200"></i> Like
											</a>
										</span> -->
									</h4>

									<ul class="blog-meta">
										<li><i class="fa fa-eye"></i><a href="#">Views</a></li>
										<li><i class="fa fa-thumbs-up"></i> <a href="#"><%=bean.getNo_of_votes() %>
												Votes</a></li>
									</ul>
								</div>
								<!--  blog-title -->

							</div>
							<!--  clearfix -->
							<div class="well">
								<span class="">Submitted By : <%=bean.getUsername() %></span>
								<span class="pull-right">School : <%=bean.getSchoolname() %></span>
							</div>
							<h4><%=bean.getTheme() %></h4>
							<p><%=bean.getYouridea() %></p>
							<h6><i class="fa fa-group"></i>&nbsp;Team Name: <%=bean.getTeamname() %></h6>
							<p class="post-tags">
								<i class="fa fa-tags"></i>Team Details: <%=bean.getTeamdetails() %>
							</p>
							<div class="row">
								<%
									int nextid=bean.getId()+1;
									int preid=bean.getId()-1;
								%>
								<% 	MiscDAOImpl miscDAO=new MiscDAOImpl(); %>
								<%	if(miscDAO.isProdigyExist(preid)) {%>
								<a href="<%=request.getContextPath()%>/jsp/prodigy/entry.jsp?id=<%=preid%>"
									class="btn btn-warning pull-left">Previous</a>
								<% } %>
								<%	if(miscDAO.isProdigyExist(nextid)) {%>
								<a href="<%=request.getContextPath()%>/jsp/prodigy/entry.jsp?id=<%=nextid%>"
									class="btn btn-primary pull-right">Next</a>
								<% } %>
							</div>
						</article>
						<!-- blog-post-->

					</div>
					<!-- col-md-8-->

					<div class="col-sm-5 col-md-4">
						<aside>

							<ul>

								<li class="widget widget_text"><h5 class="widgettitle">Future
										Leaders</h5>
									<div class="textwidget">
										<p align="justify">PRODIGIES is an attempt to bring out
											the leader in every student. Each team has an opportunity to
											address a problem and provide a solution that can make the
											world a better place.</p>
									</div></li>

								<!-- li class="widget widget_categories"><h5
										class="widgettitle">Mentors</h5>
									<ul>
										<li class="cat-item cat-item-17"><a href="#">Shubha
												Srinivas</a></li>
										<li class="cat-item cat-item-1"><a href="#">Venkat
												Reddy</a></li>
										<li class="cat-item cat-item-18"><a href="#">Rakesh
												Dubbudu</a></li>
										<li class="cat-item cat-item-19"><a href="#">Venkat
												Sureddy</a></li>
									</ul></li -->

								<li class="widget widget_recent_entries">
									<h5 class="widgettitle">Recent Ideas</h5>
									<ul>
										<li><a href="#">Involving students in school
												maintenance</a></li>
										<li><a href="#">Seva hubs in the city</a></li>
										<li><a href="#">Tuition Points in slums</a></li>
										<li><a href="#">Motion detectors to save electricity</a>
										</li>

									</ul>
								</li>

								<li class="widget widget_archive"><h5 class="widgettitle">Top
										Schools so far</h5>
									<ul>
										<li><a href='#'>Vikas the Concept School</a></li>
										<li><a href='#'>Oakridge International School</a></li>
										<li><a href='#'>Sanskriti the School</a></li>
									</ul></li>

								<li class="widget widget_tag_cloud"><h5 class="widgettitle">Tags</h5>
									<div class="tagcloud">
										<a href='#' class='tag-link-14' title='2 topics'
											style='font-size: 14px;'>kids</a> <a href='#'
											class='tag-link-7' title='1 topic' style='font-size: 14px;'>games</a>
										<a href='#' class='tag-link-10' title='2 topics'
											style='font-size: 14px;'>bike</a> <a href='#'
											class='tag-link-13' title='1 topic' style='font-size: 14px;'>play</a>
										<a href='#' class='tag-link-11' title='1 topic'
											style='font-size: 14px;'>drawing</a> <a href='#'
											class='tag-link-8' title='1 topic' style='font-size: 14px;'>activity</a>
										<a href='#' class='tag-link-12' title='2 topics'
											style='font-size: 14px;'>learn</a> <a href='#'
											class='tag-link-16' title='2 topics' style='font-size: 14px;'>music</a>
										<a href='#' class='tag-link-9' title='4 topics'
											style='font-size: 14px;'>club</a> <a href='#'
											class='tag-link-15' title='1 topic' style='font-size: 14px;'>book</a>
									</div></li>

							</ul>

						</aside>
					</div>
					<!--.col-md-4-->

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


	<%-- <script type='text/javascript'
		src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script> --%>
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
	<script>
		$('document').ready(function() {
			
			$('#vote').click(function() {
				
				if("<%=session.getAttribute("user")%>" != null) {
					$.ajax({
						type: 'POST',
						url:'<%=request.getContextPath() %>/jsp/prodigy/voteforprodigy.jsp',				        
				        data: {"id":<%=id%>},
				        cache: false,
				      	beforeSend:function(){
				    	  $("body").css("cursor", "progress");
				      },
				      success:function(result){
				    	  if(result==1){
				    		  alert("Vote Submitted");
				    	  }
				    	  else if(result==0){
				    		  alert("Vote submission failed, Try again later.;")
				    	  }
				      },
				      
				      complete:function(){
				      	$("body").css("cursor", "default"); 
				        	//$('#like').attr("disabled", true);
				      }
				   });
				} else {
					alert("Login First");
				}
			});
		});
	</script>
</body>
</html>