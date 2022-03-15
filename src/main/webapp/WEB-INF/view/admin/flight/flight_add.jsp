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
                <form method="post" action="/flight/save">
                    <div class="form-group">
                        <label for="name">Airline</label>
                        <input type="text" class="form-control" id="airplane" name="airline">
                    </div>


                    <div class="form-group">
                        <label for="salary">Source</label>
                        <select class="form-control input-lg m-bot15" name="source">
                            <option selected>Select A Country</option>
                            <option>Dhaka</option>
                            <option>France</option>
                            <option>USA</option>
                            <option>India</option>
                            <option>Canada</option>
                            <option>Dubai</option>
                            <option>Itali</option>
                            <option>England</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="nid">Departure</label>
                        <select class="form-control input-lg m-bot15" name="departure">
                            <option value="Select" selected>Select A Country</option>
                            <option value="Canada">Canada</option>
                            <option value="Dubai">Dubai</option> 
                            <option value="Canada">Italy</option>
                            <option value="Dubai">England</option> 
                            <option value="Canada">Dhaka</option>
                            <option value="Dubai">France</option> 
                            <option value="Canada">USA</option>
                            <option value="Dubai">India</option> 
                          
                        </select>
                    </div>
                    
                    <div class="form-group" >
                        <label for="area">Flight Date</label>
                        <input type="date" class="form-control" id="f_date" name="f_date">
                    </div>
                    
                    
                    <div class="form-group">
                        <label for="area">Arrival time</label>
                        <input type="date" class="form-control" id="arrival_time" name="arrival_time">
                    </div>


                    <div class="form-group">
                        <label for="area">Departure_time</label>
                        <input type="date" class="form-control" id="departure_time" name="departure_time">
                    </div>

                    <div class="form-group">
                        <label for="nid">Class</label>
                        <select class="form-control input-lg m-bot15" name="departure">
                            <option value="Select" selected>Select A Class</option>
                            <option value="Canada">Economy</option>
                            <option value="Dubai">First</option> 
                            <option value="Canada">Business</option>

                        </select>
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