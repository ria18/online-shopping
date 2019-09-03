<%@ taglib
    prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" 
%>

 <h3 class="lead"> Your Shop Name GmbH </h3>
          <div class="list-group">
        
          <c:forEach items="${categories}" var ="category">
            <a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item">${category.name}</a>
           </c:forEach>
          
          
          </div>

          