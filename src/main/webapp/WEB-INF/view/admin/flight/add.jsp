<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active container" id="flights">
    <div class="col-lg-12">
        <section class="panel color2">
            <header class="panel-heading text-center">
                <h1> Add Flight</h1>
            </header>
            <div class="panel-body">
                <form method="post" action="/admin/flight/save">
                    <div class="form-group">
                        <label for="name">Airline</label>
                        <input type="text" class="form-control" id="airplane" name="airline">
                    </div>
                    
<!--                      <div class="form-group"> -->
<!--                         <label for="nid">Departure Airport</label> -->
<!--                         <select class="form-control input-lg m-bot15" name="departure_airport"> -->
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
                    
<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Departure Airport:</label>
					<div class="col-sm-9">
						<select id="inputState" class="form-control" name="departure_airport">
							<c:forEach items="${airport}" var="airport">
								<option value="${airport.name}">${airport.name}</option>
							</c:forEach>
						</select>
					</div>
				</div>


                    <div class="form-group">
                        <label for="salary">Arrival Airport</label>
                        <select class="form-control input-lg m-bot15" name="arrival_airport">
                            <option selected>Select A Country</option>
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
<!--                         <label for="area">Departing Date</label> -->
<!--                         <input type="date" class="form-control" id="departing_date" name="departing_date"> -->
<!--                     </div> -->
                    
                    



<!--                     <div class="form-group"> -->
<!--                         <label for="area">Departing Time</label> -->
<!--                         <input type="time" class="form-control" id="departing_time" name="departing_time"> -->
<!--                     </div> -->
                    
                    
<!--                     <div class="form-group" > -->
<!--                         <label for="area">Arrival Date</label> -->
<!--                         <input type="date" class="form-control" id="arrival_date" name="arrival_date"> -->
<!--                     </div> -->
<!--                     <div class="form-group"> -->
<!--                         <label for="area">Arrival Time</label> -->
<!--                         <input type="time" class="form-control" id="arrival_time" name="arrival_time"> -->
<!--                     </div> -->

              

<div class="form-group">
                        <label for="economy">Class</label><br/>
                          <input type="checkbox" id="economy" name="class_name" value="economy"/>    
                 <label>Economy</label>     
              <input type="checkbox" id="first" name="class_name" value="first" />    
                 <label>First</label>     
              <input type="checkbox" id="business" name="class_name" value="business"/>    
                 <label>Business</label>   
                    </div>

                    <div class="form-group">
                        <label for="area">Flight charge:</label>
                        <input type="number" class="form-control" id="flight_charge" name="flight_charge">
                    </div>
                    
                    <div class="form-group">
                        <label for="area">Airplane:</label>
                        <input type="text" class="form-control" id="airpalne" name="airpalne">
                    </div>
                    <div class="form-group">
                        <label for="area">Flight Name</label>
                        <input type="text" class="form-control" id="flight_name" name="flight_name">
                    </div>
                    <div class="form-group">
                        <label for="area">Seat No</label>
                        <input type="text" class="form-control" id="seatNo" name="seatNo">
                    </div>
                    
                    <div class="form-group">
                        <label for="area">Discount</label>
                        <input type="text" class="form-control" id="discount" name="discount">
                    </div>
                    
                    
                    <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-primary">Submit</button>
        
        </div>
    </div>
                </form>
            </div>
        </section>
    </div>       
</div> 

  <%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>