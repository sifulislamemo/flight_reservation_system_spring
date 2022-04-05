<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>

<input type="text" name="flight_code" class="form-control"
										id="flight_code" placeholder="Flight Code" />
										<input type="text" name="seat_no" class="form-control"
										id="seat_no" placeholder="Seat No" />
										<input type="text" name="seat_code" class="form-control"
										id="seat_code" placeholder="seat code" />
										<label for="class">Class:</label> <select
												class="browser-default custom-select" name="seat_class">

												<option value="economy">Economy</option>
												<option value="first">First</option>
												<option value="business">Business</option>
											</select>
											
											<input type="text" name="seat_charge" class="form-control"
										id="seat_charge" placeholder="seat_charge" />
<%@include file="/WEB-INF/view/common/main_footer.jsp"%>