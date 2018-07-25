<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
   
    <!-- 3 variables to loading the statict resources  -->
    <spring:url var ="css" value ="resources/css" />
    <spring:url var ="js" value ="resources/js" />
    <spring:url var ="images" value ="resources/images" />
    
    
	 <core:set var ="contextRoot" value ="${pageContext.request.contextPath}"/>
	
	<!DOCTYPE html>
	<html lang="en">
	  <head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <meta name="description" content="">
	    <meta name="author" content="">
	
	    <title>Online Shopping - ${title} </title>
	    
	    <!-- Java-script -->
	    <script >
	    <!-- to know wich navbar is active  -->
	    window.menu='${title}';
	    
	    </script>
	
	    <!-- Bootstrap readable-theme -->
	    <link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">
	    
	     <!-- Bootstrap core CSS -->
	     <link href="${css}/bootstrap.min.css" rel="stylesheet">
	
	    <!-- Custom styles for this template -->
	    <link href="${css}/myapp.css" rel="stylesheet">
	
	  </head>
	
	  <body>

		<!--Footer div class  -->
		<div class ="wrapper">
		
	    <!-- Navigation -->
	  <%@ include file="./shared/navbar.jsp" %>
	
		<!-- Page content -->
		
		<div class ="content">
	    <!-- Page Content: Loading the home content -->
		<core:if test="${userClickHome == true}">
		<%@include file="home.jsp"%>
		</core:if>
		
		<!-- Load only when user clicks about -->
		<core:if test="${userClickAbout == true}">
		<%@include file="about.jsp"%>
		</core:if>
			<!-- Load only when user clicks contact -->
		<core:if test="${userClickContact == true}">
		<%@include file="contact.jsp"%>
		</core:if>
		</div>
	    <!-- Footer comes here -->
	  <%@include file="./shared/footer.jsp" %>

		<!-- JQuery -->
		<script src="${js} /jquery.js"></script>
		
	     <!-- Bootstrap core JavaScript -->
	    <script src="${js} /bootstrap.bundle.min.js"></script>
	    <script src="${js} /bootstrap.min.js"></script>
	    
	    <!-- self coded javascript and linked the myapp.js here-->
	     <script src="${js} /myapp.js"></script>
	
	</div>
  </body>

</html>