 <%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active " id="">
	<div class="col-lg-12">
  <h1 style="text-align:center">Airport List</h1>
<table  class="table table-striped table-hover" >
            <tr>
                <th>Airport Code</th>
                <th>Airport Name</th>
                <th>Country</th>
                <th>City</th>
                <th> Action</th>
                
               
            </tr>
            <c:forEach items="${airport}" var="airport">
                <tr>
                    <td>${airport.airport_code}</td>
                    <td>${airport.name}</td>
                    <td>${airport.country}</td>
                    <td>${airport.city}</td>
                    
                    <td>
                        <a href="/admin/airport/update/${airport.id}">Edit</a> &nbsp; &nbsp;
                    
                        <a href="/admin/airport/delete/${airport.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
             
        </table> 
        </div>
</div>

<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>