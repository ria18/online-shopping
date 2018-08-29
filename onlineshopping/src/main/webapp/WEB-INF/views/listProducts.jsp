<div class ="container">
	<div class ="row">
	
	<!--    would be to display sidbar -->
	
	<div class="col-lg-3">
	
		<%@include file ="./shared/sidebar.jsp" %>
	
	</div>
	<!--  Display the products -->
	<div class="col-lg-9">
	<div class ="row">
	<div class =" carousel slide my-4">
	<c:if test=" ${userClickAllProducts}">
	<ol class="breadcrumb">
		<li ><a href="${contextRoot}/home">Home</a></li>
		<li class="active">All products</li>
	</ol>
	</c:if>
	
	
	<c:if test=" ${userClickCategoryProducts}">
	<ol class="breadcrumb">
		<li><a href="${contextRoot}/home">Home</a></li>
		<li class=" active"> Category</li>
		<li class=" active">${category.name}</li>
	</ol>
	</c:if>
	
	</div>
	</div>
	</div>
	
	
	</div>
	
	</div>



</div>