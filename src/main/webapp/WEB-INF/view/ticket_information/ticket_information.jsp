<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>
<h1 style="text-align: center">Flight Information</h1>
<div class="tab-content ">
	<h1 style="text-align: center">Ticket Information</h1>
	<div role="tabpanel" class="tab-pane active container" id="flights">
		<div class="row">
			<div class="col-xxs-12 col-xs-6 mt">
				<div class="input-field">
					<label for="from">Seat No:</label> <input type="text"
						class="form-control" id="from-place" placeholder="Seat No" />
				</div>
				<br /> <label for="from">Available Seat:</label>

				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#exampleModal">Seat Select</button>

				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Airplane
									Seat</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="movie-container">
      <label> Select a movie:</label>
      <select id="movie">
        <option value="220">Godzilla vs Kong (RS.220)</option>
        <option value="320">Radhe (RS.320)</option>
        <option value="250">RRR (RS.250)</option>
        <option value="260">F9 (RS.260)</option>
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
      <div class="screen"></div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat sold"></div>
        <div class="seat sold"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat sold"></div>
        <div class="seat sold"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat sold"></div>
        <div class="seat sold"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat sold"></div>
        <div class="seat sold"></div>
        <div class="seat sold"></div>
        <div class="seat"></div>
      </div>
    </div>

    <p class="text">
      You have selected <span id="count">0</span> seat for a price of RS.<span
        id="total"
        >0</span
      >
    </p>
   
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save
									changes</button>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="col-xs-12"></div>



			<div class="col-xxs-12 col-xs-6 mt">
				<section>
					<label for="class">Class:</label> <select
						class="cs-select cs-skin-border">
						<option value="" disabled selected>Economy</option>
						<option value="economy">Economy</option>
						<option value="first">First</option>
						<option value="business">Business</option>
					</select>
				</section>
			</div>
			<div class="col-xxs-12 col-xs-6 mt">
				<section>
					<label for="class">Adult:</label> <select
						class="cs-select cs-skin-border">
						<option value="" disabled selected>1</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</section>
			</div>
			<div class="col-xxs-12 col-xs-6 mt">
				<section>
					<label for="class">Children:</label> <select
						class="cs-select cs-skin-border">
						<option value="" disabled selected>1</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</section>
			</div>
			<div class="col-xs-12">
				<a href="/traveler_information" class="btn btn-primary btn-block">Book</a>
			</div>
		</div>
	</div>




	<%@include file="/WEB-INF/view/common/main_footer.jsp"%>
	<div class="movie-container">
      <label> Select a movie:</label>
      <select id="movie">
        <option value="220">Godzilla vs Kong (RS.220)</option>
        <option value="320">Radhe (RS.320)</option>
        <option value="250">RRR (RS.250)</option>
        <option value="260">F9 (RS.260)</option>
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
      <div class="screen"></div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat sold"></div>
        <div class="seat sold"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat sold"></div>
        <div class="seat sold"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat sold"></div>
        <div class="seat sold"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat sold"></div>
        <div class="seat sold"></div>
        <div class="seat sold"></div>
        <div class="seat"></div>
      </div>
    </div>

    <p class="text">
      You have selected <span id="count">0</span> seat for a price of RS.<span
        id="total"
        >0</span
      >
    </p>
    <script src="script.js">
    
    </script>