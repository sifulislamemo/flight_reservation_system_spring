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
						Enter your OTP</h2>
					<input type="text" name="otp" id="otp"/> 
					<input type="button" value="OTP" class="btn btn-primary" id="btnOtp"/>
					</div>


<div id="invoice">
<!-- 	<div class="container invoice"> -->
<!--   <div class="invoice-header"> -->
<!--     <div class="row"> -->
<!--       <div class="col-xs-8"> -->
<!--         <h1>Invoice <small>With Credit</small></h1> -->
<!--         <h4 class="text-muted" id="seat_code"></h4> -->
<!--         <h4 class="text-muted" id="flight_code"></h4> -->
<!--       </div> -->
<!--       <div class="col-xs-4"> -->
<!--         <div class="media"> -->
<!--           <div class="media-left"> -->
<!--             <img class="media-object logo" src="https://dummyimage.com/70x70/000/fff&text=ACME" /> -->
<!--           </div> -->
<!--           <ul class="media-body list-unstyled"> -->
<!--             <li><strong>Acme Corporation</strong></li> -->
<!--             <li>Software Development</li> -->
<!--             <li>Field 3, Moon</li> -->
<!--             <li>info@acme.com</li> -->
<!--           </ul> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!--   <div class="invoice-body"> -->
<!--     <div class="row"> -->
<!--       <div class="col-xs-5"> -->
<!--         <div class="panel panel-default"> -->
<!--           <div class="panel-heading"> -->
<!--             <h3 class="panel-title">Company Details</h3> -->
<!--           </div> -->
<!--           <div class="panel-body"> -->
<!--             <dl class="dl-horizontal"> -->
<!--               <dt>Name</dt> -->
<!--               <dd><strong>Acme Corporation</strong></dd> -->
<!--               <dt>Industry</dt> -->
<!--               <dd>Software Development</dd> -->
<!--               <dt>Address</dt> -->
<!--               <dd>Field 3, Moon</dd> -->
<!--               <dt>Phone</dt> -->
<!--               <dd>123.4456.4567</dd> -->
<!--               <dt>Email</dt> -->
<!--               <dd>mainl@acme.com</dd> -->
<!--               <dt>Tax NO</dt> -->
<!--               <dd class="mono">123456789</dd> -->
<!--               <dt>Tax Office</dt> -->
<!--               <dd>A' Moon</dd> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--       <div class="col-xs-7"> -->
<!--         <div class="panel panel-default"> -->
<!--           <div class="panel-heading"> -->
<!--             <h3 class="panel-title">Customer Details</h3> -->
<!--           </div> -->
<!--           <div class="panel-body"> -->
<!--             <dl class="dl-horizontal"> -->
<!--               <dt>Name</dt> -->
<!--               <dd>Microsoft Corporation</dd> -->
<!--               <dt>Industry</dt> -->
<!--               <dd>Software Development</dd> -->
<!--               <dt>Address</dt> -->
<!--               <dd>One Microsoft Way Redmond, WA 98052-7329, USA</dd> -->
<!--               <dt>Phone</dt> -->
<!--               <dd>(425) 882-8080</dd> -->
<!--               <dt>Email</dt> -->
<!--               <dd>contact@microsoft.com</dd> -->
<!--               <dt>Tax NO</dt> -->
<!--               <dd class="mono">123456789</dd> -->
<!--               <dt>&nbsp;</dt> -->
<!--               <dd>&nbsp;</dd> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--     <div class="panel panel-default"> -->
<!--       <div class="panel-heading"> -->
<!--         <h3 class="panel-title">Services / Products</h3> -->
<!--       </div> -->
<!--       <table class="table table-bordered table-condensed"> -->
<!--         <thead> -->
<!--           <tr> -->
<!--             <th>Item / Details</th> -->
<!--             <th class="text-center colfix">Unit Cost</th> -->
<!--             <th class="text-center colfix">Sum Cost</th> -->
<!--             <th class="text-center colfix">Discount</th> -->
<!--             <th class="text-center colfix">Tax</th> -->
<!--             <th class="text-center colfix">Total</th> -->
<!--           </tr> -->
<!--         </thead> -->
<!--         <tbody> -->
<!--           <tr> -->
<!--             <td> -->
<!--               Lorem Ipsum Dolor -->
<!--               <br> -->
<!--               <small class="text-muted">The best lorem in town, try it now or leave forever</small> -->
<!--             </td> -->
<!--             <td class="text-right"> -->
<!--               <span class="mono">$1,000.00</span> -->
<!--               <br> -->
<!--               <small class="text-muted">Before Tax</small> -->
<!--             </td> -->
<!--             <td class="text-right"> -->
<!--               <span class="mono">$18,000.00</span> -->
<!--               <br> -->
<!--               <small class="text-muted">18 Units</small> -->
<!--             </td> -->
<!--             <td class="text-right"> -->
<!--               <span class="mono">- $1,800.00</span> -->
<!--               <br> -->
<!--               <small class="text-muted">Special -10%</small> -->
<!--             </td> -->
<!--             <td class="text-right"> -->
<!--               <span class="mono">+ $3,240.00</span> -->
<!--               <br> -->
<!--               <small class="text-muted">VAT 20%</small> -->
<!--             </td> -->
<!--             <td class="text-right"> -->
<!--               <strong class="mono">$19,440.00</strong> -->
<!--               <br> -->
<!--               <small class="text-muted mono">$16,200.00</small> -->
<!--             </td> -->
<!--           </tr> -->

<!--           <tr> -->
<!--             <td> -->
<!--               Sit Amet Dolo -->
<!--               <br> -->
<!--               <small class="text-muted">Now you may sit</small> -->
<!--             </td> -->
<!--             <td class="text-right"> -->
<!--               <span class="mono">$120.00</span> -->
<!--               <br> -->
<!--               <small class="text-muted">Before Tax</small> -->
<!--             </td> -->
<!--             <td class="text-right"> -->
<!--               <span class="mono">$240.00</span> -->
<!--               <br> -->
<!--               <small class="text-muted">2 Units</small> -->
<!--             </td> -->
<!--             <td class="text-right"> -->
<!--               <span class="mono">- $0.00</span> -->
<!--               <br> -->
<!--               <small class="text-muted">-</small> -->
<!--             </td> -->
<!--             <td class="text-right"> -->
<!--               <span class="mono">+ $72.00</span> -->
<!--               <br> -->
<!--               <small class="text-muted">VAT:20% S:10%</small> -->
<!--             </td> -->
<!--             <td class="text-right"> -->
<!--               <strong class="mono">$312.00</strong> -->
<!--               <br> -->
<!--               <small class="text-muted mono">$240.00</small> -->
<!--             </td> -->
<!--           </tr> -->
<!--         </tbody> -->
<!--       </table> -->
<!--     </div> -->
<!--     <div class="panel panel-default"> -->
<!--       <table class="table table-bordered table-condensed"> -->
<!--         <thead> -->
<!--           <tr> -->
<!--             <td class="text-center col-xs-1">Sub Total</td> -->
<!--             <td class="text-center col-xs-1">Discount</td> -->
<!--             <td class="text-center col-xs-1">Total</td> -->
<!--             <td class="text-center col-xs-1">Tax</td> -->
<!--             <td class="text-center col-xs-1">Final</td> -->
<!--           </tr> -->
<!--         </thead> -->
<!--         <tbody> -->
<!--           <tr> -->
<!--             <th class="text-center rowtotal mono">$18,240.00</th> -->
<!--             <th class="text-center rowtotal mono">-$1,800.00</th> -->
<!--             <th class="text-center rowtotal mono">$16,440.00</th> -->
<!--             <th class="text-center rowtotal mono">$3,312.00</th> -->
<!--             <th class="text-center rowtotal mono">$19,752.00</th> -->
<!--           </tr> -->
<!--         </tbody> -->
<!--       </table> -->
<!--     </div> -->
<!--     <div class="row"> -->
<!--       <div class="col-xs-7"> -->
<!--         <div class="panel panel-default"> -->
<!--           <div class="panel-body"> -->
<!--             <i>Comments / Notes</i> -->
<!--             <hr style="margin:3px 0 5px" /> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit repudiandae numquam sit facere blanditiis, quasi distinctio ipsam? Libero odit ex expedita, facere sunt, possimus consectetur dolore, nobis iure amet vero. -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--       <div class="col-xs-5"> -->
<!--         <div class="panel panel-default"> -->
<!--           <div class="panel-heading"> -->
<!--             <h3 class="panel-title">Payment Method</h3> -->
<!--           </div> -->
<!--           <div class="panel-body"> -->
<!--             <p>For your convenience, you may deposite the final ammount at one of our banks</p> -->
<!--             <ul class="list-unstyled"> -->
<!--               <li>Alpha Bank - <span class="mono">MO123456789456123</span></li> -->
<!--               <li>Beta Bank - <span class="mono">MO123456789456123</span></li> -->
<!--               <li>Gamma Bank - <span class="mono">MO123456789456123</span></li> -->
<!--             </ul> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->

<!--   </div> -->
<!--   <div class="invoice-footer"> -->
<!--     Thank you for choosing our services. -->
<!--     <br/> We hope to see you again soon -->
<!--     <br/> -->
<!--     <strong>~ACME~</strong> -->
<!--   </div> -->
<!-- </div> -->



    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lato:wght@100;400;900&display=swap');

        :root {
            --primary: #0000ff;
            --secondary: #3d3d3d;
            --white: #fff;
        }

/*         * { */
/*             margin: 0; */
/*             padding: 0; */
/*             box-sizing: border-box; */
/*             font-family: 'Lato', sans-serif; */
/*         } */

/*         body { */
/*             background: var(--secondary); */
/*             padding: 50px; */
/*             color: var(--secondary); */
/*             display: flex; */
/*             align-items: center; */
/*             justify-content: center; */
/*             font-size: 14px; */
/*         } */

        .bold {
            font-weight: 900;
        }

        .light {
            font-weight: 100;
        }

        .wrapper {
            background: var(--white);
            padding: 30px;
        }

        .invoice_wrapper {
            border: 3px solid var(--primary);
            width: 700px;
            max-width: 100%;
        }

        .invoice_wrapper .header .logo_invoice_wrap,
        .invoice_wrapper .header .bill_total_wrap {
            display: flex;
            justify-content: space-between;
            padding: 30px;
        }

        .invoice_wrapper .header .logo_sec {
            display: flex;
            align-items: center;
        }

        .invoice_wrapper .header .logo_sec .title_wrap {
            margin-left: 5px;
        }

        .invoice_wrapper .header .logo_sec .title_wrap .title {
            text-transform: uppercase;
            font-size: 18px;
            color: var(--primary);
        }

        .invoice_wrapper .header .logo_sec .title_wrap .sub_title {
            font-size: 12px;
        }

        .invoice_wrapper .header .invoice_sec,
        .invoice_wrapper .header .bill_total_wrap .total_wrap {
            text-align: right;
        }

        .invoice_wrapper .header .invoice_sec .invoice {
            font-size: 28px;
            color: var(--primary);
        }

        .invoice_wrapper .header .invoice_sec .invoice_no,
        .invoice_wrapper .header .invoice_sec .date {
            display: flex;
            width: 100%;
        }

        .invoice_wrapper .header .invoice_sec .invoice_no span:first-child,
        .invoice_wrapper .header .invoice_sec .date span:first-child {
            width: 70px;
            text-align: left;
        }

        .invoice_wrapper .header .invoice_sec .invoice_no span:last-child,
        .invoice_wrapper .header .invoice_sec .date span:last-child {
            width: calc(100% - 70px);
        }

        .invoice_wrapper .header .bill_total_wrap .total_wrap .price,
        .invoice_wrapper .header .bill_total_wrap .bill_sec .name {
            color: var(--primary);
            font-size: 20px;
        }

        .invoice_wrapper .body .main_table .table_header {
            background: var(--primary);
        }

        .invoice_wrapper .body .main_table .table_header .row {
            color: var(--white);
            font-size: 18px;
            border-bottom: 0px;
        }

        .invoice_wrapper .body .main_table .row {
            display: flex;
            border-bottom: 1px solid var(--secondary);
        }

        .invoice_wrapper .body .main_table .row .col {
            padding: 10px;
        }

        .invoice_wrapper .body .main_table .row .col_no {
            width: 5%;
        }

        .invoice_wrapper .body .main_table .row .col_des {
            width: 45%;
        }

        .invoice_wrapper .body .main_table .row .col_price {
            width: 20%;
            text-align: center;
        }

        .invoice_wrapper .body .main_table .row .col_qty {
            width: 10%;
            text-align: center;
        }

        .invoice_wrapper .body .main_table .row .col_total {
            width: 20%;
            text-align: right;
        }

        .invoice_wrapper .body .paymethod_grandtotal_wrap {
            display: flex;
            justify-content: space-between;
            padding: 5px 0 30px;
            align-items: flex-end;
        }

        .invoice_wrapper .body .paymethod_grandtotal_wrap .paymethod_sec {
            padding-left: 30px;
        }

        .invoice_wrapper .body .paymethod_grandtotal_wrap .grandtotal_sec {
            width: 30%;
        }

        .invoice_wrapper .body .paymethod_grandtotal_wrap .grandtotal_sec p {
            display: flex;
            width: 100%;
            padding-bottom: 5px;
        }

        .invoice_wrapper .body .paymethod_grandtotal_wrap .grandtotal_sec p span {
            padding: 0 10px;
        }

        .invoice_wrapper .body .paymethod_grandtotal_wrap .grandtotal_sec p span:first-child {
            width: 60%;
        }

        .invoice_wrapper .body .paymethod_grandtotal_wrap .grandtotal_sec p span:last-child {
            width: 40%;
            text-align: right;
        }

        .invoice_wrapper .body .paymethod_grandtotal_wrap .grandtotal_sec p:last-child span {
            background: var(--primary);
            padding: 10px;
            color: #fff;
        }

        .invoice_wrapper .footer {
            padding: 30px;
        }

        .invoice_wrapper .footer>p {
            color: var(--primary);
            text-decoration: underline;
            font-size: 18px;
            padding-bottom: 5px;
        }

        .invoice_wrapper .footer .terms .tc {
            font-size: 16px;
        }
    </style>




    <div class="wrapper">
        <div class="invoice_wrapper">
            <div class="header">
                <div class="logo_invoice_wrap">
                    <div class="logo_sec">
                        <img src="codingboss.png" alt="code logo">
                        <div class="title_wrap">
                            <p class="title bold">Coding Boss</p>
                            <p class="sub_title">Privite Limited</p>
                        </div>
                    </div>
                    <div class="invoice_sec">
                        <p class="invoice bold">INVOICE</p>
                        <p class="invoice_no">
                            <span class="bold">Invoice</span>
                            <span>#3488</span>
                        </p>
                        <p class="date">
                            <span class="bold">Date</span>
                            <span>08/Jan/2022</span>
                        </p>
                    </div>
                </div>
                <div class="bill_total_wrap">
                    <div class="bill_sec">
                        <p>Bill To</p>
                        <p class="bold name">Alex Deo</p>
                        <span>
                            123 walls street, Townhall<br />
                            +111 222345667
                        </span>
                    </div>
                    <div class="total_wrap">
                        <p>Total Due</p>
                        <p class="bold price">USD: $1200</p>
                    </div>
                </div>
            </div>
            <div class="body">
                <div class="main_table">
                    <div class="table_header">
                        <div class="row">
                            <div class="col col_no">NO.</div>
                            <div class="col col_des">ITEM DESCRIPTION</div>
                            <div class="col col_price">PRICE</div>
                            <div class="col col_qty">QTY</div>
                            <div class="col col_total">TOTAL</div>
                        </div>
                    </div>
                    <div class="table_body">
                        <div class="row">
                            <div class="col col_no">
                                <p>01</p>
                            </div>
                            <div class="col col_des">
                                <p class="bold">Web Design</p>
                                <p>Lorem ipsum dolor sit.</p>
                            </div>
                            <div class="col col_price">
                                <p>$350</p>
                            </div>
                            <div class="col col_qty">
                                <p>2</p>
                            </div>
                            <div class="col col_total">
                                <p>$700.00</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col col_no">
                                <p>02</p>
                            </div>
                            <div class="col col_des">
                                <p class="bold">Web Development</p>
                                <p>Lorem ipsum dolor sit.</p>
                            </div>
                            <div class="col col_price">
                                <p>$350</p>
                            </div>
                            <div class="col col_qty">
                                <p>2</p>
                            </div>
                            <div class="col col_total">
                                <p>$700.00</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col col_no">
                                <p>03</p>
                            </div>
                            <div class="col col_des">
                                <p class="bold">GitHub</p>
                                <p>Lorem ipsum dolor sit.</p>
                            </div>
                            <div class="col col_price">
                                <p>$120</p>
                            </div>
                            <div class="col col_qty">
                                <p>1</p>
                            </div>
                            <div class="col col_total">
                                <p>$700.00</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col col_no">
                                <p>04</p>
                            </div>
                            <div class="col col_des">
                                <p class="bold">Backend Design</p>
                                <p>Lorem ipsum dolor sit.</p>
                            </div>
                            <div class="col col_price">
                                <p>$350</p>
                            </div>
                            <div class="col col_qty">
                                <p>2</p>
                            </div>
                            <div class="col col_total">
                                <p>$700.00</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col col_no">
                                <p>05</p>
                            </div>
                            <div class="col col_des">
                                <p class="bold">Backend Development</p>
                                <p>Lorem ipsum dolor sit.</p>
                            </div>
                            <div class="col col_price">
                                <p>$150</p>
                            </div>
                            <div class="col col_qty">
                                <p>1</p>
                            </div>
                            <div class="col col_total">
                                <p>$700.00</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="paymethod_grandtotal_wrap">
                    <div class="paymethod_sec">
                        <p class="bold">Payment Method</p>
                        <p>Visa, master Card and We accept Cheque</p>
                    </div>
                    <div class="grandtotal_sec">
                        <p class="bold">
                            <span>SUB TOTAL</span>
                            <span>$7500</span>
                        </p>
                        <p>
                            <span>Tax Vat 18%</span>
                            <span>$200</span>
                        </p>
                        <p>
                            <span>Discount 10%</span>
                            <span>-$700</span>
                        </p>
                        <p class="bold">
                            <span>Grand Total</span>
                            <span>$7000.0</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="footer">
                <p>Thank you and Best Wishes</p>
                <div class="terms">
                    <p class="tc bold">Terms & Coditions</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit non praesentium doloribus. Quaerat
                        vero iure itaque odio numquam, debitis illo quasi consequuntur velit, explicabo esse nesciunt
                        error aliquid quis eius!</p>
                </div>
            </div>
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
					console.log(data[0].seat_no);
					$("#otp_div").hide();
					$("#seat_code").text(data[0].seat_no);
					$("#flight_code").text(data[0].flight_code);
					$("#invoice").show();
			}

		});
	}else{
		alert("Wrong OTP");
	}
})
</script>