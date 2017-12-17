<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<header id="header-bar" class="wrap">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="clearfix">
					<div id="logo">
						<%-- <a href="<%=request.getContextPath() %>/"><img class="img-responsive"
							src="<%=request.getContextPath()%>/images/logo.png" alt="" /></a> --%>
						<a href="<%=request.getContextPath() %>/">
							<h5 style="color: #FFF;">GROOM4MORE</h5>
						</a>
					</div>

					<nav class="navbar navbar-custom" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#collapse-navigation">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse" id="collapse-navigation">
							<ul class="nav menu-nav">
								<li id="home"><a href="<%=request.getContextPath() %>/">Home</a></li>
								<li id="about"><a href="">About</a>
									<ul class="sub-menu">
										<li><a href="<%=request.getContextPath() %>/jsp/about/about.jsp">WHO WE ARE?</a></li>
										<li><a href="<%=request.getContextPath() %>/jsp/about/faq.jsp">FAQ</a></li>
										<li><a href="<%=request.getContextPath() %>/jsp/about/schools.jsp">SCHOOLS</a></li>
										<li><a href="<%=request.getContextPath() %>/jsp/about/partners.jsp">PARTNERS</a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/about/contact.jsp">CONTACT</a></li>
										<!-- <li><a href="404-page.jsp">404 Page</a></li> -->
									</ul></li>
								<li id="prodigy"><a href="<%=request.getContextPath() %>/jsp/prodigy/prodigies.jsp">PRODIGIES</a></li>
								<li id="tests"><a href="">TESTS</a>
									<ul class="sub-menu">
										<li><a href="<%=request.getContextPath() %>/jsp/tests/iit-test.jsp">IIT FOUNDATION</a></li>
										<li><a href="<%=request.getContextPath() %>/jsp/tests/olympiad-test.jsp">OLYMPIAD</a></li>
										<li><a href="<%=request.getContextPath() %>/jsp/tests/quizzes.jsp">TESTS</a></li>
									</ul></li>
									
								<li class="dropdown">
						            <a id="dLabel" data-toggle="dropdown" data-target="#" href="/page.html">
						                TESTS <span class="caret"></span>
						            </a>
						    		<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
						              <li class="divider"></li>
						              <li class="dropdown-submenu">
						                <a tabindex="-1" href="#">school</a>
						                <ul class="dropdown-menu">
						                  <li><a tabindex="-1" href="#"></a></li>
						                  <li class="dropdown-submenu">
						                    <a href="#">IIT FOUNDATION</a>
						                    <ul class="dropdown-menu">
						                       <li><a href="#">3rd level</a></li>
						                    	<li><a href="#">3rd level</a></li>
						                    </ul>  
						                  </li>
						                  <li><a href="#">OLYMPIAD</a></li>
						                  <!--  <li><a href="#">Second level</a></li>  -->
						                </ul>
						              </li>
						            </ul>
						            <ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
						              <li class="dropdown-submenu">
						               <a tabindex="-1" href="#">School</a>
						             
						              
						                <ul class="dropdown-menu">
						                  <li><a tabindex="-1" href="#"></a></li>
						                  <li><a href="#">IIT Foundation</a></li>
						                  <li><a href="#">Olympiad</a></li>
						                </ul>
						              </li>
						              <!-- <li class="divider"></li> -->						              
						              <li class="dropdown-submenu">
						               <a tabindex="-1" href="#">Engineering</a>
						             
						              
						                <ul class="dropdown-menu">
						                  <li><a tabindex="-1" href="#"></a></li>
						                  <li class="dropdown-submenu">
						                    <a href="#">IIT</a>
						                    <ul class="dropdown-menu">
						                        <li><a href="#">JEE ADVANCED</a></li>
						                    	<li><a href="#">JEE MAINS</a></li>
						                    </ul>
						                  </li>
						                  <li><a href="#">EAMCET</a></li>
						                  <li><a href="#">VIT EEE</a></li>
						                   <li><a href="#">BITSAT</a></li>
						                    <li><a href="#">SRMEEE</a></li>
						                     <li><a href="#">MIT</a></li>
						                </ul>
						              </li>
						              
						            </ul>
						        </li>
						        
								
								<!-- <li><a href="gallery-3col.jsp">Galleries</a>
									<ul class="sub-menu">
										<li><a href="gallery-2col.jsp">2 Columns</a></li>
										<li><a href="gallery-3col.jsp">3 Columns</a></li>
										<li><a href="gallery-4col.jsp">4 Columns</a></li>
										<li><a href="single-gallery-1.jsp">Single Gallery
												Album</a></li>
									</ul></li> -->
								<li id="content"><a href="<%=request.getContextPath() %>/videos/videos.jsp">VIDEOS</a></li>
								<li class="blog"><a href="<%=request.getContextPath()%>/jsp/blog.jsp">BLOG</a></li>
							<c:if test="${sessionScope.user==null}">
								<a class="btn btn-primary" href="<%=request.getContextPath() %>/jsp/registration.jsp">REGISTER</a>
							</c:if>
							<c:choose>
								<c:when test="${sessionScope.user!=null}">
									<a class="btn btn-warning" href="<%=request.getContextPath()%>/analysis.action">My Analysis</a>
									<a class="btn btn-danger" href="<%=request.getContextPath()%>/logout.action">LOGOUT</a>
								</c:when>
								<c:otherwise>
									<a class="btn btn-success" href="<%=request.getContextPath() %>/jsp/login.jsp">LOGIN</a>
								</c:otherwise>
							</c:choose>
							</ul>
						</div>
						<!-- /.navbar-collapse -->

					</nav>

				</div>
				<!--.clearfix-->

			</div>
			<!--.col-md-12-->
		</div>
		<!--.row-->
	</div>
	<!--.container-->
</header>
<!-- header-bar-->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-83220340-1', 'auto');
  ga('send', 'pageview');

</script>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var $_Tawk_API={},$_Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/57be86c72b03647ba16b79f9/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->