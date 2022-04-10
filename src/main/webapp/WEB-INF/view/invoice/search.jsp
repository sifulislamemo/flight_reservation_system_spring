<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/common/main_header.jsp"%>
<div class="container-fluid">
	<div class="col-lg-12">
		<div class="checkout-inner">
			<div class="billing-address">

				<div class="col-md-12 container">

					


					<div id="invoice_code_div">
					<h2 style="color: #0066cc; font-weight: bold" class="text-center">Please
						Search your Invoice</h2>
					<input type="text" name="temail" id="temail"/> 
					<input type="button" value="Search" class="btn btn-primary" id="btnInvoice"/>
					</div>
					<div id="otp_div">
					<h2 style="color: #0066cc; font-weight: bold" class="text-center">Please
						Search your OTP</h2>
					<input type="text" name="otp" id="otp"/> 
					<input type="button" value="OTP" class="btn btn-primary" id="btnOtp"/>
					</div>


<div id="invoice">
	<div class="container invoice">
  <div class="invoice-header">
    <div class="row">
      <div class="col-xs-8">
        <h1>Invoice <small>With Credit</small></h1>
        <h4 class="text-muted" id="seat_code"></h4>
        <h4 class="text-muted" id="flight_code"></h4>
      </div>
      <div class="col-xs-4">
        <div class="media">
          <div class="media-left">
            <img class="media-object logo" src="https://dummyimage.com/70x70/000/fff&text=ACME" />
          </div>
          <ul class="media-body list-unstyled">
            <li><strong>Acme Corporation</strong></li>
            <li>Software Development</li>
            <li>Field 3, Moon</li>
            <li>info@acme.com</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="invoice-body">
    <div class="row">
      <div class="col-xs-5">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">Company Details</h3>
          </div>
          <div class="panel-body">
            <dl class="dl-horizontal">
              <dt>Name</dt>
              <dd><strong>Acme Corporation</strong></dd>
              <dt>Industry</dt>
              <dd>Software Development</dd>
              <dt>Address</dt>
              <dd>Field 3, Moon</dd>
              <dt>Phone</dt>
              <dd>123.4456.4567</dd>
              <dt>Email</dt>
              <dd>mainl@acme.com</dd>
              <dt>Tax NO</dt>
              <dd class="mono">123456789</dd>
              <dt>Tax Office</dt>
              <dd>A' Moon</dd>
          </div>
        </div>
      </div>
      <div class="col-xs-7">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">Customer Details</h3>
          </div>
          <div class="panel-body">
            <dl class="dl-horizontal">
              <dt>Name</dt>
              <dd>Microsoft Corporation</dd>
              <dt>Industry</dt>
              <dd>Software Development</dd>
              <dt>Address</dt>
              <dd>One Microsoft Way Redmond, WA 98052-7329, USA</dd>
              <dt>Phone</dt>
              <dd>(425) 882-8080</dd>
              <dt>Email</dt>
              <dd>contact@microsoft.com</dd>
              <dt>Tax NO</dt>
              <dd class="mono">123456789</dd>
              <dt>&nbsp;</dt>
              <dd>&nbsp;</dd>
          </div>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Services / Products</h3>
      </div>
      <table class="table table-bordered table-condensed">
        <thead>
          <tr>
            <th>Item / Details</th>
            <th class="text-center colfix">Unit Cost</th>
            <th class="text-center colfix">Sum Cost</th>
            <th class="text-center colfix">Discount</th>
            <th class="text-center colfix">Tax</th>
            <th class="text-center colfix">Total</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>
              Lorem Ipsum Dolor
              <br>
              <small class="text-muted">The best lorem in town, try it now or leave forever</small>
            </td>
            <td class="text-right">
              <span class="mono">$1,000.00</span>
              <br>
              <small class="text-muted">Before Tax</small>
            </td>
            <td class="text-right">
              <span class="mono">$18,000.00</span>
              <br>
              <small class="text-muted">18 Units</small>
            </td>
            <td class="text-right">
              <span class="mono">- $1,800.00</span>
              <br>
              <small class="text-muted">Special -10%</small>
            </td>
            <td class="text-right">
              <span class="mono">+ $3,240.00</span>
              <br>
              <small class="text-muted">VAT 20%</small>
            </td>
            <td class="text-right">
              <strong class="mono">$19,440.00</strong>
              <br>
              <small class="text-muted mono">$16,200.00</small>
            </td>
          </tr>

          <tr>
            <td>
              Sit Amet Dolo
              <br>
              <small class="text-muted">Now you may sit</small>
            </td>
            <td class="text-right">
              <span class="mono">$120.00</span>
              <br>
              <small class="text-muted">Before Tax</small>
            </td>
            <td class="text-right">
              <span class="mono">$240.00</span>
              <br>
              <small class="text-muted">2 Units</small>
            </td>
            <td class="text-right">
              <span class="mono">- $0.00</span>
              <br>
              <small class="text-muted">-</small>
            </td>
            <td class="text-right">
              <span class="mono">+ $72.00</span>
              <br>
              <small class="text-muted">VAT:20% S:10%</small>
            </td>
            <td class="text-right">
              <strong class="mono">$312.00</strong>
              <br>
              <small class="text-muted mono">$240.00</small>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="panel panel-default">
      <table class="table table-bordered table-condensed">
        <thead>
          <tr>
            <td class="text-center col-xs-1">Sub Total</td>
            <td class="text-center col-xs-1">Discount</td>
            <td class="text-center col-xs-1">Total</td>
            <td class="text-center col-xs-1">Tax</td>
            <td class="text-center col-xs-1">Final</td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th class="text-center rowtotal mono">$18,240.00</th>
            <th class="text-center rowtotal mono">-$1,800.00</th>
            <th class="text-center rowtotal mono">$16,440.00</th>
            <th class="text-center rowtotal mono">$3,312.00</th>
            <th class="text-center rowtotal mono">$19,752.00</th>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="row">
      <div class="col-xs-7">
        <div class="panel panel-default">
          <div class="panel-body">
            <i>Comments / Notes</i>
            <hr style="margin:3px 0 5px" /> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit repudiandae numquam sit facere blanditiis, quasi distinctio ipsam? Libero odit ex expedita, facere sunt, possimus consectetur dolore, nobis iure amet vero.
          </div>
        </div>
      </div>
      <div class="col-xs-5">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">Payment Method</h3>
          </div>
          <div class="panel-body">
            <p>For your convenience, you may deposite the final ammount at one of our banks</p>
            <ul class="list-unstyled">
              <li>Alpha Bank - <span class="mono">MO123456789456123</span></li>
              <li>Beta Bank - <span class="mono">MO123456789456123</span></li>
              <li>Gamma Bank - <span class="mono">MO123456789456123</span></li>
            </ul>
          </div>
        </div>
      </div>
    </div>

  </div>
  <div class="invoice-footer">
    Thank you for choosing our services.
    <br/> We hope to see you again soon
    <br/>
    <strong>~ACME~</strong>
  </div>
</div>
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
					$("#flight_code").text(data[4].flight_code);
					$("#invoice").show();
			}

		});
	}else{
		alert("Wrong OTP");
	}
})
</script>