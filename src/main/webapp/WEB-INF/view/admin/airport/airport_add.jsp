 <%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%> 
  
  <h1>Create Airport </h1> <br>
<div class="col-md-12">
    <form method="post" action="/airport/save">
        <div class="form-group">
            <label for="name">Airport_code:</label>
            <input type="text" class="form-control" id="airplane_name" placeholder="Enter airport_code" name="airport_code">
        </div>
        <div class="form-group">
            <label for="salary">airport_name:</label>
            <input type="text" class="form-control" id="last_name" placeholder="Enter name" name="name">
        </div>
        <div class="form-group">
            <label for="nid">City:</label>
            <input type="text" class="form-control" id="NID" placeholder="Enter city" name="city">
        </div>
        <div class="form-group">
            <label for="area">Country:</label>
            <input type="text" class="form-control" id="passport_id" placeholder="Enter country" name="country">
        </div>
 
        <button type="submit" class="btn btn-primary">Submit</button>

    </form>
</div>     
  
  <%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>