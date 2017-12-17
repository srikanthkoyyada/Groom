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
								<c:choose>
									<c:when test="${sessionScope.admin!=null}">
									<div class="button">
										<a href="<%=request.getContextPath()%>/admin-logout.action"><button class="btn btn-danger">Logout</button></a>
									</div>
									</c:when>
									<c:otherwise>
									<div class="button">
										<a href="<%=request.getContextPath()%>/admin"><button class="btn btn-success">Login</button></a>
									</div>
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