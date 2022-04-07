<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>
<br/><br/>
 <header class="panel-heading text-center">
                <h1> Seat Add </h1>
            </header>
		<div role="tabpanel" class="tab-pane active container" id="flights">
		<form method="post" action="/admin/seat/save">
<!-- 		flight -->


		<div class="form-group">
					<label for="" >Flight Name:</label>

						<select id="inputState" class="form-control" name="flight_name">
							<c:forEach items="${flight}" var="flight">
								<option value="${flight.flight_name}">${flight.flight_name}</option>
							</c:forEach>
						</select>

				</div>

										<input type="text" name="seat_no" class="form-control"
										id="seat_no" placeholder="Seat No" /><br/>
										<input type="number" name="seat_code" class="form-control"
										id="seat_code" placeholder="seat code" /><br/>
										<label for="class">Class:</label> <select
												class="browser-default custom-select" name="seat_class">
												<option value="economy">Economy</option>
												<option value="first">First</option>
												<option value="business">Business</option>
											</select><br/><br/>
											
											<input type="number" name="seat_charge" class="form-control"
									id="seat_charge" placeholder="seat_charge" /><br/>
									
									        <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-primary">Submit</button>
        
        </div>
    </div>
    									                                         <input type="hidden" class="form-control"value="${flight.id}" id="flight_id" name="flight_id">
    
									</form>
									</div>
	
<br/><br/>						
<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>
