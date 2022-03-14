<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>
<div class=" ">
<div class="tab-content container">
										<div role="tabpanel" class="tab-pane active" id="flights">
											<div class="row">
												<div class="col-xxs-12 col-xs-6 mt">
													<div class="input-field">
														<label for="from">From:</label> <input type="text"
															class="form-control" id="from-place"
															placeholder="Dhaka, Bangladesh" />
													</div>
												</div>
												<div class="col-xxs-12 col-xs-6 mt">
													<div class="input-field">
														<label for="from">To:</label> <input type="text"
															class="form-control" id="to-place"
															placeholder="Los Angeles, USA" />
													</div>
												</div>
												<div class="col-xxs-12 col-xs-6 mt alternate">
													<div class="input-field">
														<label for="date-start">Check In:</label> <input
															type="text" class="form-control" id="date-start"
															placeholder="mm/dd/yyyy" />
													</div>
												</div>
												<div class="col-xxs-12 col-xs-6 mt alternate">
													<div class="input-field">
														<label for="date-end">Check Out:</label> <input
															type="text" class="form-control" id="date-end"
															placeholder="mm/dd/yyyy" />
													</div>
												</div>
												<div class="col-sm-12 mt">
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
													<a href="/available_flight" class="btn btn-primary btn-block"
														>Search Flight</a>
												</div>
											</div>
										</div>
										</div>

<%@include file="/WEB-INF/view/common/main_footer.jsp"%>