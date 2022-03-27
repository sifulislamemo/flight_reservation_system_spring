<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>
<link rel="stylesheet" href="/resources/home/css/wizard.css">
<link rel="stylesheet" href="/resources/ticket_information/seat.css">
<div class="container-fluid" id="">
	<div class="row justify-content-center mt-0">
		<!--         <div class="col-11 col-sm-9 col-md-7 col-lg-6 text-center p-0 mt-3 mb-2"> -->
		<!--             <div class="card px-0 pt-4 pb-0 mt-3 mb-3"> -->

		<div role="tabpanel" class="tab-pane active container" id="flights">
			<div class="col-lg-12">


				<!-- <div class="row"> -->
				<!--                     <div class="col-md-12 mx-0"> -->
				<!--                        <h2 style="text-align: center">Flight Details</h2> -->


				<!--                     </div> -->



				<!--                 </div> -->


				<!--                 <p>Fill all form field to go to next step</p> -->
				<div class="row">
					<div class="col-md-12 mx-0">

						<form id="msform" action="/home/book/invoice" method="post">
							<!-- progressbar -->
							<ul id="progressbar">
								<li class="active" id="account"><strong>Ticket</strong></li>
								<li id="personal"><strong>Traveler</strong></li>
								<li id="payment"><strong>Payment</strong></li>
								<!--                                 <li id="confirm"><strong>Success</strong></li> -->
							</ul>
							<!-- fieldsets -->
							<fieldset>
								<div class="form-card">
									<h2 style="text-align: center">Flight Details</h2>
									<h2 class="fs-title">Ticket Information</h2>
									<input type="text" name="seat_no" class="form-control" id="from-place" placeholder="Seat No" />
									<!-- 				Button trigger modal -->
									<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Seat Select</button>

									<br /> <br />





									<div class="col-xxs-12 col-xs-6 mt">
										<section>



											<!-- 						<select id="inputState" class="form-control" name="departure_airport"> -->
											<%-- 							<c:forEach items="${flight}" var="flight"> --%>
											<%-- 								<option value="${flight.class_name}">${flight.class_name}</option> --%>
											<%-- 							</c:forEach> --%>
											<!-- 						</select> -->


											<label for="class">Class:</label>
											 <select
												class="browser-default custom-select" name="seat_class">
												
												<option value="economy">Economy</option>
												<option value="first">First</option>
												<option value="business">Business</option>
											</select>
										</section>
									</div>
									<div class="col-xxs-12 col-xs-6 mt">
										<section>
											<label for="class">Adult:</label> <select
												class="browser-default custom-select" name="adult">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
											</select>
										</section>
									</div>

									<section>
										<label for="class">Children:</label> <select
											class="browser-default custom-select" name="children">

											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
										</select>
									</section>

									<!-- 			<div class="col-xs-12"> -->
									<!-- 				<a href="/traveler_information" class="btn btn-primary btn-block">Book</a> -->
									<!-- 			</div> -->
								</div>
								<input type="button" name="next" class="next action-button"
									value="Continue" />


							</fieldset>


							<fieldset>
								<div class="form-card">
									<h2 class="fs-title">Traveler Information</h2>
									<input type="text" name="fname" placeholder="First Name" /> 
									<input type="text" name="lname" placeholder="Last Name" /> 
										<input type="date" name="tdate"> 
										<input type="text" name="tcontact_no" placeholder="Contact No." /> 
										<input type="text" name="temail" placeholder="Email" /> 
										<input type="text" name="tpassport_no" placeholder="passport no" />
								</div>
								<input type="button" name="previous" class="previous action-button-previous" value="Previous" /> 
								<input type="button" name="next" class="next action-button" value="Continue" />
							</fieldset>
							<fieldset>
								<div class="form-card">
									<h2 class="fs-title">Payment Information</h2>
									<div class="radio-group">
										<div class='radio' data-value="credit">
											<img src="https://i.imgur.com/XzOzVHZ.jpg" width="200px" height="100px">
										</div>
										<div class='radio' data-value="paypal">
											<img src="https://i.imgur.com/jXjwZlj.jpg" width="200px" height="100px">
										</div>
										<br>
									</div>
									<label class="pay">Card Holder Name*</label> 
									<input type="text" name="card_holder_name" placeholder="" />
									<div class="row">
										<div class="col-9">
											<label class="pay">Card Number*</label> 
											<input type="number" name="card_number" placeholder="" />
										</div>
										<div class="col-3">
											<label class="pay">CVC*</label> 
											<input type="number" name="cvc" placeholder="***" />
										</div>
									</div>
									<!--                                     <div class="row"> -->
									<!--                                         <div class="col-3"> <label class="pay">Expiry Date*</label> </div> -->
									<!--                                         <div class="col-9"> <select class="list-dt" id="month" name="expmonth"> -->
									<!--                                                 <option selected>Month</option> -->
									<!--                                                 <option>January</option> -->
									<!--                                                 <option>February</option> -->
									<!--                                                 <option>March</option> -->
									<!--                                                 <option>April</option> -->
									<!--                                                 <option>May</option> -->
									<!--                                                 <option>June</option> -->
									<!--                                                 <option>July</option> -->
									<!--                                                 <option>August</option> -->
									<!--                                                 <option>September</option> -->
									<!--                                                 <option>October</option> -->
									<!--                                                 <option>November</option> -->
									<!--                                                 <option>December</option> -->
									<!--                                             </select> <select class="list-dt" id="year" name="expyear"> -->
									<!--                                                 <option selected>Year</option> -->
									<!--                                             </select> </div> -->
									<!--                                     </div> -->
								</div>
								<input type="button" name="previous"
									class="previous action-button-previous" value="Previous" />
								<button type="submit" class="next action-button">Confirm</button>
							</fieldset>
							<!--                             <fieldset> -->
							<!--                                 <div class="form-card " > -->
							<!--                                     <h2 class="fs-title text-center">Success !</h2> <br><br> -->
							<!--                                     <div class="row justify-content-center"> -->
							<!--                                         <div class="col-3"> <img src="https://img.icons8.com/color/96/000000/ok--v2.png" style="width:400px;height:400px; text-align:center;" class="fit-image"> </div> -->
							<!--                                     </div> <br><br> -->
							<!--                                     <div class="row justify-content-center"> -->
							<!--                                         <div class="col-7 text-center"> -->
							<!--                                             <h3><b>You booking has been Confirmed</b></h3> -->
							<!--                                         </div> -->
							<!--                                     </div> -->
							<!--                                 </div> -->
							<!--                             </fieldset> -->
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<div class="modal fade seatss" id="exampleModal" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Airplane Seat</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- 							seat plan -->
			<div class="seatss">
				<div class="movie-container">
					<label> Seat Class:</label> <select id="movie">
						<option value="220">Economy</option>
						<option value="320">First</option>
						<option value="250">Business</option>
					</select>
				</div>

				<ul class="showcase">
					<li>
						<div class="seat"></div> 
						<small>Available</small>
					</li>
					<li>
						<div class="seat selected"></div> 
						<small>Selected</small>
					</li>
					<li>
						<div class="seat sold"></div> 
						<small>Sold</small>
					</li>
				</ul>
				<div class="container">
					<!-- <div class="screen"></div> -->

					<div class="row">
						<label for="">A1</label> 
						<input class="seat" value="A1" id ="a1"></input> 
						<label for="">A2</label> 
						<input class="seat" value="A2" id ="a2"></input> 
						<label for="">A3</label>
						<input class="seat" value="A3" id ="a3"></input>
					</div>

					<div class="row">
						<label for="">B1</label> 
						<input class="seat" value="B1" id ="b1"></input> 
						<label for="" >B2</label> 
						<input class="seat" value="B2" id ="b2"></input> 
						<label for="" value="B1" id ="b1">B3</label>
						<input class="seat" value="B3" id ="b3"></input>
					</div>
					<div class="row">
						<label for="">C1</label> 
						<input class="seat" value="C1" id ="c1"></input> 
						<label for="">C2</label> 
						<input class="seat" value="C2" id ="c2"></input> 
						<label for="">C3</label>
						<input class="seat" value="C3" id ="c3"></input>
						<!-- <div class="seat sold"></div> -->
					</div>

					<div class="row">
						<label for="">D1</label> 
						<input class="seat" value="D1" id ="d1"></input>
						<label for="">D2</label> 
						<input class="seat" value="D2" id ="d2">
						</input> <label for="">D3</label>
						<input class="seat" value="D3" id ="d3"></input>
					</div>
					<div class="row">
						<label for="">E1</label> 
						<input class="seat" value="E1" id ="e1"></input> 
						<label for="">E2</label> 
						<input class="seat" value="E2" id ="e2"></input> 
						<label for="">E3</label>
						<input class="seat" value="E3" id ="e3"></input>
					</div>



				</div>

				<p class="text">
					You have selected <span id="count">0</span> seat for a price of TK.<span
						id="total">0</span>
				</p>
			</div>

			<!--   end seat plan -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!-- 				end modal -->

<%@include file="/WEB-INF/view/common/main_footer.jsp"%>


<script>
$(document).ready(function(){

	var current_fs, next_fs, previous_fs; //fieldsets
	var opacity;

	$(".next").click(function(){

	current_fs = $(this).parent();
	next_fs = $(this).parent().next();

	//Add Class Active
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

	//show the next fieldset
	next_fs.show();
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
	step: function(now) {
	// for making fielset appear animation
	opacity = 1 - now;

	current_fs.css({
	'display': 'none',
	'position': 'relative'
	});
	next_fs.css({'opacity': opacity});
	},
	duration: 600
	});
	});

	$(".previous").click(function(){

	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev();

	//Remove class active
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

	//show the previous fieldset
	previous_fs.show();

	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
	step: function(now) {
	// for making fielset appear animation
	opacity = 1 - now;

	current_fs.css({
	'display': 'none',
	'position': 'relative'
	});
	previous_fs.css({'opacity': opacity});
	},
	duration: 600
	});
	});

	$('.radio-group .radio').click(function(){
	$(this).parent().find('.radio').removeClass('selected');
	$(this).addClass('selected');
	});

	$(".submit").click(function(){
	return false;
	})

	});
	
	
// 	seat plan

const container = document.querySelector(".container");
const seats = document.querySelectorAll(".row .seat:not(.sold)");
const count = document.getElementById("count");
const total = document.getElementById("total");
const movieSelect = document.getElementById("movie");

populateUI();

let ticketPrice = +movieSelect.value;

// Save selected movie index and price
function setMovieData(movieIndex, moviePrice) {
  localStorage.setItem("selectedMovieIndex", movieIndex);
  localStorage.setItem("selectedMoviePrice", moviePrice);
}

// Update total and count
function updateSelectedCount() {
  const selectedSeats = document.querySelectorAll(".row .seat.selected");

  const seatsIndex = [...selectedSeats].map((seat) => [...seats].indexOf(seat));

  localStorage.setItem("selectedSeats", JSON.stringify(seatsIndex));

  const selectedSeatsCount = selectedSeats.length;

  count.innerText = selectedSeatsCount;
  total.innerText = selectedSeatsCount * ticketPrice;

  setMovieData(movieSelect.selectedIndex, movieSelect.value);
}


// Get data from localstorage and populate UI
function populateUI() {
  const selectedSeats = JSON.parse(localStorage.getItem("selectedSeats"));

  if (selectedSeats !== null && selectedSeats.length > 0) {
    seats.forEach((seat, index) => {
      if (selectedSeats.indexOf(index) > -1) {
        console.log(seat.classList.add("selected"));
      }
    });
  }

  const selectedMovieIndex = localStorage.getItem("selectedMovieIndex");

  if (selectedMovieIndex !== null) {
    movieSelect.selectedIndex = selectedMovieIndex;
    console.log(selectedMovieIndex)
  }
}
console.log(populateUI())
// Movie select event
movieSelect.addEventListener("change", (e) => {
  ticketPrice = +e.target.value;
  setMovieData(e.target.selectedIndex, e.target.value);
  updateSelectedCount();
});

// Seat click event
container.addEventListener("click", (e) => {
  if (
    e.target.classList.contains("seat") &&
    !e.target.classList.contains("sold")
  ) {
    e.target.classList.toggle("selected");

    updateSelectedCount();
  }
});

// Initial count and total set
updateSelectedCount();



</script>















<!-- <h1 style="text-align: center">Flight Information</h1> -->
<!-- <div class="tab-content "> -->
<!-- 	<h1 style="text-align: center">Ticket Information</h1> -->
<!-- 	<div role="tabpanel" class="tab-pane active container" id="flights"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-xxs-12 col-xs-6 mt"> -->
<!-- 				<div class="input-field"> -->
<!-- 					<label for="from">Seat No:</label> <input type="text" -->
<!-- 						class="form-control" id="from-place" placeholder="Seat No" /> -->
<!-- 				</div> -->
<!-- 				<br /> <label for="from">Available Seat:</label> -->

<!-- <!-- 				Button trigger modal -->
-->
<!-- 				<button type="button" class="btn btn-primary" data-toggle="modal" -->
<!-- 					data-target="#exampleModal">Seat Select</button> -->

<!-- <!-- 				Modal -->
-->
<!-- 				<div class="modal fade" id="exampleModal" tabindex="-1" -->
<!-- 					role="dialog" aria-labelledby="exampleModalLabel" -->
<!-- 					aria-hidden="true"> -->
<!-- 					<div class="modal-dialog" role="document"> -->
<!-- 						<div class="modal-content"> -->
<!-- 							<div class="modal-header"> -->
<!-- 								<h5 class="modal-title" id="exampleModalLabel">Airplane -->
<!-- 									Seat</h5> -->
<!-- 								<button type="button" class="close" data-dismiss="modal" -->
<!-- 									aria-label="Close"> -->
<!-- 									<span aria-hidden="true">&times;</span> -->
<!-- 								</button> -->
<!-- 							</div> -->

<!-- 							<div class="plane"> -->
<!--   <div class="cockpit"> -->
<!--     <h1>Please select a seat</h1> -->
<!--   </div> -->
<!--   <div class="exit exit--front fuselage"> -->

<!--   </div> -->
<!--   <ol class="cabin fuselage"> -->
<!--     <li class="row row--1"> -->
<!--       <ol class="seats" type="A"> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="1A" /> -->
<!--           <label for="1A">1A</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="1B" /> -->
<!--           <label for="1B">1B</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="1C" /> -->
<!--           <label for="1C">1C</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" disabled id="1D" /> -->
<!--           <label for="1D">Occupied</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="1E" /> -->
<!--           <label for="1E">1E</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="1F" /> -->
<!--           <label for="1F">1F</label> -->
<!--         </li> -->
<!--       </ol> -->
<!--     </li> -->
<!--     <li class="row row--2"> -->
<!--       <ol class="seats" type="A"> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="2A" /> -->
<!--           <label for="2A">2A</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="2B" /> -->
<!--           <label for="2B">2B</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="2C" /> -->
<!--           <label for="2C">2C</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="2D" /> -->
<!--           <label for="2D">2D</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="2E" /> -->
<!--           <label for="2E">2E</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="2F" /> -->
<!--           <label for="2F">2F</label> -->
<!--         </li> -->
<!--       </ol> -->
<!--     </li> -->
<!--     <li class="row row--3"> -->
<!--       <ol class="seats" type="A"> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="3A" /> -->
<!--           <label for="3A">3A</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="3B" /> -->
<!--           <label for="3B">3B</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="3C" /> -->
<!--           <label for="3C">3C</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="3D" /> -->
<!--           <label for="3D">3D</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="3E" /> -->
<!--           <label for="3E">3E</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="3F" /> -->
<!--           <label for="3F">3F</label> -->
<!--         </li> -->
<!--       </ol> -->
<!--     </li> -->
<!--     <li class="row row--4"> -->
<!--       <ol class="seats" type="A"> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="4A" /> -->
<!--           <label for="4A">4A</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="4B" /> -->
<!--           <label for="4B">4B</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="4C" /> -->
<!--           <label for="4C">4C</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="4D" /> -->
<!--           <label for="4D">4D</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="4E" /> -->
<!--           <label for="4E">4E</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="4F" /> -->
<!--           <label for="4F">4F</label> -->
<!--         </li> -->
<!--       </ol> -->
<!--     </li> -->
<!--     <li class="row row--5"> -->
<!--       <ol class="seats" type="A"> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="5A" /> -->
<!--           <label for="5A">5A</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="5B" /> -->
<!--           <label for="5B">5B</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="5C" /> -->
<!--           <label for="5C">5C</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="5D" /> -->
<!--           <label for="5D">5D</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="5E" /> -->
<!--           <label for="5E">5E</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="5F" /> -->
<!--           <label for="5F">5F</label> -->
<!--         </li> -->
<!--       </ol> -->
<!--     </li> -->
<!--     <li class="row row--6"> -->
<!--       <ol class="seats" type="A"> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="6A" /> -->
<!--           <label for="6A">6A</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="6B" /> -->
<!--           <label for="6B">6B</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="6C" /> -->
<!--           <label for="6C">6C</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="6D" /> -->
<!--           <label for="6D">6D</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="6E" /> -->
<!--           <label for="6E">6E</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="6F" /> -->
<!--           <label for="6F">6F</label> -->
<!--         </li> -->
<!--       </ol> -->
<!--     </li> -->
<!--     <li class="row row--7"> -->
<!--       <ol class="seats" type="A"> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="7A" /> -->
<!--           <label for="7A">7A</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="7B" /> -->
<!--           <label for="7B">7B</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="7C" /> -->
<!--           <label for="7C">7C</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="7D" /> -->
<!--           <label for="7D">7D</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="7E" /> -->
<!--           <label for="7E">7E</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="7F" /> -->
<!--           <label for="7F">7F</label> -->
<!--         </li> -->
<!--       </ol> -->
<!--     </li> -->
<!--     <li class="row row--8"> -->
<!--       <ol class="seats" type="A"> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="8A" /> -->
<!--           <label for="8A">8A</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="8B" /> -->
<!--           <label for="8B">8B</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="8C" /> -->
<!--           <label for="8C">8C</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="8D" /> -->
<!--           <label for="8D">8D</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="8E" /> -->
<!--           <label for="8E">8E</label> -->
<!--         </li> -->
<!--         <li class="seat"> -->
<!--           <input type="checkbox" id="8F" /> -->
<!--           <label for="8F">8F</label> -->
<!--         </li> -->
<!--       </ol> -->
<!--     </li> -->


<!--   </ol> -->
<!--   <div class="exit exit--back fuselage"> -->

<!--   </div> -->
<!-- </div> -->


<!-- 							<div class="modal-footer"> -->
<!-- 								<button type="button" class="btn btn-secondary" -->
<!-- 									data-dismiss="modal">Close</button> -->
<!-- 								<button type="button" class="btn btn-primary">Save -->
<!-- 									changes</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 			</div> -->
<!-- 			<div class="col-xs-12"></div> -->



<!-- 			<div class="col-xxs-12 col-xs-6 mt"> -->
<!-- 				<section> -->
<!-- 					<label for="class">Class:</label> <select -->
<!-- 						class="cs-select cs-skin-border"> -->
<!-- 						<option value="" disabled selected>Economy</option> -->
<!-- 						<option value="economy">Economy</option> -->
<!-- 						<option value="first">First</option> -->
<!-- 						<option value="business">Business</option> -->
<!-- 					</select> -->
<!-- 				</section> -->
<!-- 			</div> -->
<!-- 			<div class="col-xxs-12 col-xs-6 mt"> -->
<!-- 				<section> -->
<!-- 					<label for="class">Adult:</label> <select -->
<!-- 						class="cs-select cs-skin-border"> -->
<!-- 						<option value="" disabled selected>1</option> -->
<!-- 						<option value="1">1</option> -->
<!-- 						<option value="2">2</option> -->
<!-- 						<option value="3">3</option> -->
<!-- 						<option value="4">4</option> -->
<!-- 					</select> -->
<!-- 				</section> -->
<!-- 			</div> -->
<!-- 			<div class="col-xxs-12 col-xs-6 mt"> -->
<!-- 				<section> -->
<!-- 					<label for="class">Children:</label> <select -->
<!-- 						class="cs-select cs-skin-border"> -->
<!-- 						<option value="" disabled selected>1</option> -->
<!-- 						<option value="1">1</option> -->
<!-- 						<option value="2">2</option> -->
<!-- 						<option value="3">3</option> -->
<!-- 						<option value="4">4</option> -->
<!-- 					</select> -->
<!-- 				</section> -->
<!-- 			</div> -->
<!-- 			<div class="col-xs-12"> -->
<!-- 				<a href="/traveler_information" class="btn btn-primary btn-block">Book</a> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->




<%-- 	<%@include file="/WEB-INF/view/common/main_footer.jsp"%> --%>
<!-- 	<div class="movie-container"> -->
<!--       <label> Select a movie:</label> -->
<!--       <select id="movie"> -->
<!--         <option value="220">Godzilla vs Kong (RS.220)</option> -->
<!--         <option value="320">Radhe (RS.320)</option> -->
<!--         <option value="250">RRR (RS.250)</option> -->
<!--         <option value="260">F9 (RS.260)</option> -->
<!--       </select> -->
<!--     </div> -->

<!--     <ul class="showcase"> -->
<!--       <li> -->
<!--         <div class="seat"></div> -->
<!--         <small>Available</small> -->
<!--       </li> -->
<!--       <li> -->
<!--         <div class="seat selected"></div> -->
<!--         <small>Selected</small> -->
<!--       </li> -->
<!--       <li> -->
<!--         <div class="seat sold"></div> -->
<!--         <small>Sold</small> -->
<!--       </li> -->
<!--     </ul> -->
<!--     <div class="container"> -->
<!--       <div class="screen"></div> -->

<!--       <div class="row"> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--       </div> -->

<!--       <div class="row"> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat sold"></div> -->
<!--         <div class="seat sold"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--       </div> -->
<!--       <div class="row"> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat sold"></div> -->
<!--         <div class="seat sold"></div> -->
<!--       </div> -->
<!--       <div class="row"> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--       </div> -->
<!--       <div class="row"> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat sold"></div> -->
<!--         <div class="seat sold"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--       </div> -->
<!--       <div class="row"> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat"></div> -->
<!--         <div class="seat sold"></div> -->
<!--         <div class="seat sold"></div> -->
<!--         <div class="seat sold"></div> -->
<!--         <div class="seat"></div> -->
<!--       </div> -->
<!--     </div> -->

<!-- <!--     <p class="text"> -->
-->
<!-- <!--       You have selected <span id="count">0</span> seat for a price of RS.<span -->
-->
<!-- <!--         id="total" -->
-->
<!-- <!--         >0</span -->
-->
<!-- <!--       > -->
-->
<!-- <!--     </p> -->
-->
<!-- <!--     <script src="script.js"> -->
-->

<!-- <!--     </script> -->
-->
