<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>
<div class="container-fluid">
	<div class="col-lg-12">
		<div class="checkout-inner">
			<div class="billing-address">

				<div class="col-md-12 container">

					<h2 style="color: #0066cc; font-weight: bold" class="text-center">Please
						Search your Invoice</h2>


					<div id="invoice_code_div">
					<input type="text" name="temail" id="temail"/> 
					<input type="button" value="Search" class="btn btn-primary" id="btnInvoice"/>
					</div>
					<div id="otp_div">
					<input type="text" name="otp" id="otp"/> 
					<input type="button" value="OTP" class="btn btn-primary" id="btnOtp"/>
					</div>


<div id="invoice">
	<label id="seat_code"></label>
</div>
				</div>
			</div>
		</div>
	</div>

</div>

<%@include file="/WEB-INF/view/common/main_footer.jsp"%>

<script>
$("#otp_div").hide();
$("#invoice").hide();
$("#btnInvoice").click(function(){
	$("#invoice_code_div").hide();
	$("#otp_div").show();
});
$("#btnOtp").click(function(){
	if($("#otp").val() == "123"){
		$.ajax({
			type : "POST",
			url : "/home/book/invoice/usersearch",
			data : {temail : $("#temail").val()},
			success : function(data, status) {
					console.log(data[4].seat_no);
					$("#otp_div").hide();
					$("#seat_code").text(data[4].seat_no);
					$("#invoice").show();
			}

		});
	}else{
		alert("Wrong OTP");
	}
})
</script>