<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>

<div class="container-fluid">

	<div class="col-lg-12">
		<div class="checkout-inner">
			<div class="billing-address">

				<div class="col-md-12 container">

					<h2 style="color: green; -fontweight: bold" class="text-center">Congratulation
					</h2>
					<h2 style="color: #0066cc; font-weight: bold" class="text-center">Please
						take your invoice</h2>
					<div class="container bg-light">
						<div class="col-md-12 text-center">
							<button class="btn btn-primary" id="btnInvoice">Invoice</button>
						</div>
					</div>
					<div id="invoiceDiv">
						<h1 style="text-align: center">Invoice</h1>
					<table class="table table-striped table-hover">

						<tr>
							<th>Flight Code</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Passport No</th>
							<th>Capacity</th>
							<th>Action</th>


						</tr>
						<c:forEach items="${book.bList}" var="b">
							<tr>
								<td>${b.flight_code}</td>


							</tr>
						</c:forEach>

					</table>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>

<%@include file="/WEB-INF/view/common/main_footer.jsp"%>

<script>
$("#invoiceDiv").hide();
$("#btnInvoice").on("click", function(){
	$("#invoiceDiv").show();
})
</script>