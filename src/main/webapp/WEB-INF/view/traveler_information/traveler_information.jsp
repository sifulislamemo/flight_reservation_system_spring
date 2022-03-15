<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>
<div class="tab-pane active container" >
<br/>
         <br/>
    <h1 style="text-align: center">Traveler Information</h1>
    <div class="form">
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>First Name:</label> <input type="text" class="form-control" required> </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Last Name:</label> <input type="text" class="form-control" required> </div>
        </div>
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Birthday:</label> <input type="date" class="form-control" required> </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Gender:</label>
                <div class="d-flex align-items-center mt-2"> <label class="option"> <input type="radio" name="radio">Male <span class="checkmark"></span> </label> <label class="option ms-4"> <input type="radio" name="radio">Female <span class="checkmark"></span> </label> <label class="option"> <input type="radio" name="radio">Other <span class="checkmark"></span> </label> </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Email:</label> <input type="email" class="form-control" required> </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Phone Number:</label> <input type="tel" class="form-control" required> </div>
        </div>
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Passport Id:</label> <input type="text" class="form-control" required> </div>
        
        </div>
        <br/>
         <br/>
       
       <div class="col-xs-12">
				<a href="/payment" class="btn btn-primary btn-block">Confirm Booking</a>
			</div>
    </div>
</div>
 <br/>
  <br/>
<%@include file="/WEB-INF/view/common/main_footer.jsp"%>