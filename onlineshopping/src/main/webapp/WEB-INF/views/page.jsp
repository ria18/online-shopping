<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

    <!-- 3 variables to loading the statict resources  -->
    <spring:url var ="css" value ="resources/css" />
    <spring:url var ="js" value ="resources/js" />
    <spring:url var ="images" value ="resources/images" />
    
    
	 <c:set var ="contextRoot" value ="${pageContext.request.contextPath}"/>
	
	<!DOCTYPE html>
	<html lang="en">
	  <head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <meta name="description" content="">
	    <meta name="author" content="">
	
	    <title>Online shop - ${title} </title>
	    
	    <!-- Java-script -->
	    <script >
	    <!-- to know wich navbar is active  -->
	    window.menu='${title}';
	    
	    </script>
	
	    
<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">



<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

	
	  </head>
	
	  <body>

		<!--Footer div class  -->
		<div class ="wrapper">
		
	   <!-- Navigation -->
	  <%@ include file="./shared/navbar.jsp" %>
	
	<!-- Page content -->
		
		<div class ="content">
	 <!-- Page Content: Loading the home content -->
		<c:if test="${userClickHome == true}">
		<%@include file="home.jsp"%>
		</c:if>
		
	<!-- Load only when user clicks about -->
		<c:if test="${userClickAbout == true}">
		<%@include file="about.jsp"%>
		</c:if>
			<!-- Load only when user clicks contact -->
		<c:if test="${userClickContact == true}">
		<%@include file="contact.jsp"%>
		</c:if>
		
	<!-- Load only when user clicks CategoryProducts -->
		<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true }">
				<%@include file="listProducts.jsp"%>
			</c:if>	
	<!-- Load only when user clicks show product -->
			<c:if test="${userClickShowProduct == true}">
				<%@include file="singleProduct.jsp"%>
			</c:if>	
	
		
		</div> <!-- Class content -->

		<!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>

		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>

		<script src="${js}/jquery.validate.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>
		
		<!-- DataTable Plugin -->
		<script src="${js}/jquery.dataTables.js"></script>
		
		<!-- DataTable Bootstrap Script -->
		<script src="${js}/dataTables.bootstrap.js"></script>
		
		<!-- DataTable Bootstrap Script -->
		<script src="${js}/bootbox.min.js"></script>
		
		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>
	
	</div>
  </body>

</html>