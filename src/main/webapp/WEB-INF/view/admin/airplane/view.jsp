<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>
<div role="tabpanel" class="tab-pane active " id="">
	<div class="col-lg-12">
  <h1 style="text-align:center">Airplane List</h1>
<table  class="table table-striped table-hover" >
            <tr>
                <th>Airplane Name</th>
                <th>Owner</th>
                <th>Model</th>
                <th>Engine</th>
                <th>Flight Charge</th>
                <th>Action</th>
                
               
            </tr>
            <c:forEach items="${airplanes}" var="airplan">
                <tr>
                    <td>${airplan.airplane_name}</td>
                    <td>${airplan.owner}</td>
                    <td>${airplan.model}</td>
                    <td>${airplan.engine}</td>
                    <td>${airplan.capacity}</td>
                    <td>
                        <a href="/admin/airplane/update/${airplan.id}">Edit</a> &nbsp; &nbsp;
                   
                        <a href="/admin/airplane/delete/${airplan.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
             
        </table> 
        </div>
</div>
  <%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>