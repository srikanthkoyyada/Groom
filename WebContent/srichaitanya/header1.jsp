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
            		<a href="<%=request.getContextPath() %>/srichaitanya/index.jsp"><font size="6em" color="#FFF" >Groom4More</font></a>
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
                    <li id="home"><a href="<%=request.getContextPath() %>/srichaitanya/index.jsp">HOME</a></li>
                    <li id="about"><a href="<%=request.getContextPath() %>/srichaitanya/index.jsp">ABOUT US</a></li>
                    <li id="tests"><a href="#">TESTS</a>
                    <ul class="sub-menu">
                            <li style="list-style: none;"><a href="<%=request.getContextPath() %>/srichaitanya/index.jsp">OLYMPIAD</a></li>
                            <li style="list-style: none;"><a href="<%=request.getContextPath() %>/srichaitanya/index.jsp">IIT FOUNDATION</a></li>
                        </ul>
                    </li>
                    <li id="videos"><a href="<%=request.getContextPath() %>/srichaitanya/index.jsp">VIDEOS</a></li>
                    <li id="schools"><a href="<%=request.getContextPath() %>/srichaitanya/index.jsp">SCHOOLS</a></li>
                    <li id="faq"><a href="<%=request.getContextPath() %>/srichaitanya/index.jsp">FAQ</a></li>
                    <li id="contact"><a href="<%=request.getContextPath() %>/srichaitanya/index.jsp">CONTACT US</a></li>
                    <li id="blog"><a href="<%=request.getContextPath() %>/srichaitanya/index.jsp">BLOG</a></li>
                    </ul>
                    <ul class="menu" style="border-left: 1px solid #11538C;">
                    <%-- <c:if test="${sessionScope.user==null}">
						<li id="register" style="background-color: #37ABF2;"><a href="<%=request.getContextPath() %>/jsp/registration.jsp">REGISTER</a></li>
					</c:if> --%>
						<c:choose>
							<c:when test="${sessionScope.user!=null}">
								<li style="background-color: #5EB9F1;"><a href="<%=request.getContextPath()%>/analysis.action">My Analysis</a></li>
								<li style="background-color: #EA6969;"><a href="<%=request.getContextPath()%>/logout.action">LOGOUT</a></li>
							</c:when>
							<c:otherwise>
								<li id="login" style="background-color: #76DE7A;"><a href="<%=request.getContextPath() %>/srichaitanya/login.jsp">LOGIN</a></li>
							</c:otherwise>
						</c:choose>
	                </ul>
	                <!-- END / LIST ACCOUNT INFO -->
            	</nav>
            	<!-- END / NAVIGATION -->
			</div>
        </div></div>
    </header>
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