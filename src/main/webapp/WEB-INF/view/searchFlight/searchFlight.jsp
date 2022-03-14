<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>
<div class = "searchFlight">
<h1 style="text-align:center">Available Flight</h1>
<table  class="table table-striped table-hover" >
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Airline</th>
      <th scope="col">From</th>
      <th scope="col">To</th>
      <th scope="col">Flight Date</th>
      <th scope="col">Arrival Time</th>
      <th scope="col">Departure Time</th>
      <th scope="col">Class Name</th>
      <th scope="col">Price</th>
      <th scope="col">Airplane</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    
      <td><a href="/ticket_information" class="btn btn-warning">Book</a></td>
    </tr>
   
  </tbody>
</table>
</div>

<%@include file="/WEB-INF/view/common/main_footer.jsp"%>