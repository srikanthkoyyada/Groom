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
								<li><a href="<%=request.getContextPath() %>/jsp/prodigy/prodigies.jsp">PRODIGIES</a></li>
								<li><a href="">TESTS</a>
									<ul class="sub-menu">
										<li><a href="<%=request.getContextPath() %>/jsp/tests/iit-test.jsp">IIT FOUNDATION</a></li>
										<li><a href="<%=request.getContextPath() %>/jsp/tests/olympiad-test.jsp">OLYMPIAD</a></li>
									</ul></li>
								<!-- <li><a href="gallery-3col.jsp">Galleries</a>
									<ul class="sub-menu">
										<li><a href="gallery-2col.jsp">2 Columns</a></li>
										<li><a href="gallery-3col.jsp">3 Columns</a></li>
										<li><a href="gallery-4col.jsp">4 Columns</a></li>
										<li><a href="single-gallery-1.jsp">Single Gallery
												Album</a></li>
									</ul></li> -->
								<li><a href="<%=request.getContextPath() %>/jsp/content.jsp">CONTENT</a></li>
								<li><a href="<%=request.getContextPath()%>/jsp/blog.jsp">BLOG</a></li>
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