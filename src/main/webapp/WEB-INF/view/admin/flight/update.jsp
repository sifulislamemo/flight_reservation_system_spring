<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active container" id="flights">
    <div class="col-lg-12">
        <section class="panel color2">
            <header class="panel-heading text-center">
                <h1> Update Flight</h1>
            </header>
            <div class="panel-body">
                <form method="post" action="/admin/flight/update">
                    <div class="form-group">
                        <label for="airline">Airline</label>
                        <input type="text" class="form-control"value="${flight.airline}" id="airline" name="airline">
                    </div>
                    
<!--                      <div class="form-group"> -->
<!--                         <label >Departure Airport</label> -->
<%--                         <select class="form-control input-lg m-bot15"value="${flight.departure_airport}" name="departure_airport"> --%>
<!--                             <option value="Select" selected>Select A Country</option> -->
<!--                             <option value="Canada">Canada</option> -->
<!--                             <option value="Dubai">Dubai</option>  -->
<!--                             <option value="Italy">Italy</option> -->
<!--                             <option value="England">England</option>  -->
<!--                             <option value="Dhaka">Dhaka</option> -->
<!--                             <option value="France">France</option>  -->
<!--                             <option value="USA">USA</option> -->
<!--                             <option value="India">India</option>  -->
                          
<!--                         </select> -->
<!--                     </div> -->
<!-- <div class="form-group row"> -->
<!-- 					<label for="name" class="col-sm-3 col-form-label">Departure Airport:</label> -->
<!-- 					<div class="col-sm-9"> -->
<!-- 						<select id="inputState" class="form-control" name="departure_airport"> -->
<%-- 							<c:forEach items="${airport}" var="airport"> --%>
<%-- 								<option value="${airport.name}">${airport.name}</option> --%>
<%-- 							</c:forEach> --%>
<!-- 						</select> -->
<!-- 					</div> -->
<!-- 				</div> -->


                    <div class="form-group">
                        <label >Arrival Airport</label>
                        <select class="form-control input-lg m-bot15"value="${flight.arrival_airport}" name="arrival_airport">
                            <option >Select A Country</option>
                            <option value="Dhaka">Dhaka</option>
                            <option value="France">France</option>
                            <option value="USA">USA</option>
                            <option value="India">India</option>
                            <option value="Canada">Canada</option>
                            <option value="Dubai">Dubai</option>
                            <option value="Italy">Italy</option>
                            <option value="England">England</option>
                        </select>
                    </div>
                    
<!--                     <div class="form-group" > -->
<!--                         <label for="departing_date">Departing Date</label> -->
<%--                         <input type="date" class="form-control"value="${flight.departing_date}" id="departing_date" name="departing_date"> --%>
<!--                     </div> -->
                    
                    


<!--                     <div class="form-group"> -->
<!--                         <label for="departing_time">Departing Time</label> -->
<%--                         <input type="time" class="form-control"value="${flight.departing_time}" id="departing_time" name="departing_time"> --%>
<!--                     </div> -->
                    
                    
<!--                     <div class="form-group" > -->
<!--                         <label for="arrival_date">Arrival Date</label> -->
<%--                         <input type="date" class="form-control"value="${flight.arrival_date}" id="arrival_date" name="arrival_date"> --%>
<!--                     </div> -->
<!--                     <div class="form-group"> -->
<!--                         <label for="arrival_time">Arrival Time</label> -->
<%--                         <input type="time" class="form-control"value="${flight.arrival_time}" id="arrival_time" name="arrival_time"> --%>
<!--                     </div> -->



<div class="form-group">
                        <label >Class</label><br/>
                          <input type="checkbox" id="economy"value="${flight.class_name}" name="class_name" value="Economy"/>    
                 <label>Economy</label>     
              <input type="checkbox" id="first" value="${flight.class_name}"name="class_name" value="First" />    
                 <label>First</label>     
              <input type="checkbox" id="business"value="${flight.class_name}" name="class_name" value="Business"/>    
                 <label>Business</label>   
                    </div>

                    <div class="form-group">
                        <label for="flight_charge">Flight charge:</label>
                        <input type="number" class="form-control"value="${flight.flight_charge}" id="flight_charge" name="flight_charge">
                    </div>
                    
                    <div class="form-group">
                        <label for="airpalne">Airplane:</label>
                        <input type="text" class="form-control"value="${flight.airpalne}" id="airpalne" name="airpalne">
                    </div>
                    <div class="form-group">
                        <label for="flight_name">Flight Name</label>
                        <input type="text" class="form-control"value="${flight.flight_name}" id="flight_name" name="flight_name">
                    </div>
                    <div class="form-group">
                        <label for="seatNo">Seat No</label>
                        <input type="text" class="form-control"value="${flight.seatNo}" id="seatNo" name="seatNo">
                    </div>
                    
                    <div class="form-group">
                        <label for="discount">Discount</label>
                        <input type="text" class="form-control"value="${flight.discount}" id="discount" name="discount">
                    </div>
                    
                    
                    <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-primary">Update</button>
        
        </div>
    </div>
                </form>
            </div>
        </section>
    </div>       
</div> 

  <%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>