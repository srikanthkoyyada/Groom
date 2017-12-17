<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<header id="header" class="header">
        <div class="container">
			<div class="row">			
			<div class="col-md-12" style="padding-left:0px;">
			 <!-- LOGO -->
            <div class="col-md-2" style="padding-left:0px;">
            	<div class="pull-left">	
            		<a href="<%=request.getContextPath() %>/index.jsp"><font size="6em" color="#FFF" >GROOM4MORE</font></a>
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
                <!-- END / LIST ACCOUNT INFO -->

            </nav>
            <!-- END / NAVIGATION -->
			</div>
        </div></div>
    </header>