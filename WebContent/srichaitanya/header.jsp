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
								<li id="home"><a href="<%=request.getContextPath() %>/srichaitanya/">Home</a></li>
								<li id="about"><a href="">About</a>
									<ul class="sub-menu">
										<li><a href="<%=request.getContextPath() %>/srichaitanya">WHO WE ARE?</a></li>
										<li><a href="<%=request.getContextPath() %>/srichaitanya">FAQ</a></li>
										<li><a href="<%=request.getContextPath() %>/srichaitanya">SCHOOLS</a></li>
										<li><a href="<%=request.getContextPath() %>/srichaitanya">PARTNERS</a></li>
										<li><a href="<%=request.getContextPath()%>/srichaitanya">CONTACT</a></li>
										<!-- <li><a href="404-page.jsp">404 Page</a></li> -->
									</ul></li>
								<li id="prodigy"><a href="<%=request.getContextPath() %>/srichaitanya">PRODIGIES</a></li>
								<li id="tests"><a href="">TESTS</a>
									<ul class="sub-menu">
										<li><a href="<%=request.getContextPath() %>/srichaitanya">IIT FOUNDATION</a></li>
										<li><a href="<%=request.getContextPath() %>/srichaitanya">OLYMPIAD</a></li>
										<li><a href="<%=request.getContextPath() %>/srichaitanya">TESTS</a></li>
									</ul></li>
								<!-- <li><a href="gallery-3col.jsp">Galleries</a>
									<ul class="sub-menu">
										<li><a href="gallery-2col.jsp">2 Columns</a></li>
										<li><a href="gallery-3col.jsp">3 Columns</a></li>
										<li><a href="gallery-4col.jsp">4 Columns</a></li>
										<li><a href="single-gallery-1.jsp">Single Gallery
												Album</a></li>
									</ul></li> -->
								<li id="content"><a href="<%=request.getContextPath() %>/srichaitanya">CONTENT</a></li>
								<li class="blog"><a href="<%=request.getContextPath()%>/srichaitanya">BLOG</a></li>
							<!-- <c:if test="${sessionScope.user==null}">
								<a class="btn btn-primary" href="<%=request.getContextPath() %>/jsp/registration.jsp">REGISTER</a>
							</c:if> -->
							<c:choose>
								<c:when test="${sessionScope.user!=null}">
									<a class="btn btn-warning" href="<%=request.getContextPath()%>/analysis.action">My Analysis</a>
									<a class="btn btn-danger" href="<%=request.getContextPath()%>/logout.action">LOGOUT</a>
								</c:when>
								<c:otherwise>
									<a class="btn btn-success" href="<%=request.getContextPath() %>/srichaitanya/login.jsp">LOGIN</a>
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