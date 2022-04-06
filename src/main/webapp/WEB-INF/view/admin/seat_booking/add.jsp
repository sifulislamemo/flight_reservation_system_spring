<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>
<br/><br/>
 <header class="panel-heading text-center">
                <h1> Seat Add </h1>
            </header>
		<div role="tabpanel" class="tab-pane active container" id="flights">
<input type="text" name="flight_code" class="form-control"
										id="flight_code" placeholder="Flight Code" /><br/>
										<input type="text" name="seat_no" class="form-control"
										id="seat_no" placeholder="Seat No" /><br/>
										<input type="text" name="seat_code" class="form-control"
										id="seat_code" placeholder="seat code" /><br/>
										<label for="class">Class:</label> <select
												class="browser-default custom-select" name="seat_class">
												<option value="economy">Economy</option>
												<option value="first">First</option>
												<option value="business">Business</option>
											</select><br/><br/>
											
											<input type="text" name="seat_charge" class="form-control"
									id="seat_charge" placeholder="seat_charge" /><br/>
									
									</div>
	
<br/><br/>						
<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>
