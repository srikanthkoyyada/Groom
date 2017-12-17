<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.current-menu-item{
		color: #1d82aa;
    	background-color: #FFF;
    }
</style>
<header id="header" class="header" style="background-color: #1d82aa;">
        <div class="container">
			<div class="row">
			<div class="col-md-12">
				<div class="pull-right">
					
				</div>
			</div>
			<div class="col-md-12" style="padding-left:0px;">
			 <!-- LOGO -->
            <div class="col-md-2" style="padding-left:0px;">
            	<div class="pull-left" style="padding-top:10px;">	
            		<a href="<%=request.getContextPath() %>/index.jsp"><font size="6em" color="#FFF" >Groom4More</font></a>
            	</div>
            </div>
            <!-- END / LOGO -->
            <!-- NAVIGATION -->
            <nav class="navigation col-md-10">

                <div class="open-menu">
                    <span class="item item-1"></span>
                    <span class="item item-2"></span>
                    <span class="item item-3"></span>
                </div>               

                <!-- MENU -->
                <ul class="menu">
                    <li id="home"><a href="<%=request.getContextPath() %>/index.jsp">Home</a></li>
                    <li id="about"><a href="<%=request.getContextPath() %>/jsp/aboutus.jsp">About Us</a></li>
                    <li id="tests"><a href="<%=request.getContextPath() %>/jsp/quizzes.jsp">Tests</a></li>
                    <li id="videos"><a href="<%=request.getContextPath() %>/jsp/videos.jsp">Videos</a></li>
                    <li id="schools"><a href="<%=request.getContextPath() %>/jsp/schools.jsp">Schools</a></li>
                    <li id="faq"><a href="<%=request.getContextPath() %>/jsp/faq.jsp">FAQ</a></li>
                    <li id="contact"><a href="<%=request.getContextPath() %>/jsp/contactus.jsp">Contact Us</a></li>
                    <li id="blog"><a href="<%=request.getContextPath() %>/jsp/blog-list.jsp">Blog</a></li>
                    </ul>
                    <ul class="menu" style="border-left: 1px solid #11538C;">
                    <c:if test="${sessionScope.user==null}">
						<li id="register"><a href="<%=request.getContextPath() %>/jsp/registration.jsp">Register</a></li>
					</c:if>
						<c:choose>
							<c:when test="${sessionScope.user!=null}">
								<li><a href="<%=request.getContextPath()%>/logout.action">Logout</a></li>
								<li><a href="<%=request.getContextPath()%>/analysis.action">My Analysis</a></li>
							</c:when>
							<c:otherwise>
								<li id="login"><a href="<%=request.getContextPath() %>/jsp/login.jsp">Login</a></li>
							</c:otherwise>
						</c:choose>
	                </ul>
	                <!-- END / LIST ACCOUNT INFO -->
            	</nav>
            	<!-- END / NAVIGATION -->
			</div>
        </div></div>
    </header>