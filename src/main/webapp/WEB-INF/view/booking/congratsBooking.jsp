<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>

<style>
        #invoice{
            padding: 30px;
        }

        .invoice {
            position: relative;
            background-color: #FFF;
            min-height: 680px;
            padding: 15px
        }

        .invoice header {
            padding: 10px 0;
            margin-bottom: 20px;
            border-bottom: 1px solid #3989c6
        }

        .invoice .company-details {
            text-align: right
        }

        .invoice .company-details .name {
            margin-top: 0;
            margin-bottom: 0
        }

        .invoice .contacts {
            margin-bottom: 20px
        }

        .invoice .invoice-to {
            text-align: left
        }

        .invoice .invoice-to .to {
            margin-top: 0;
            margin-bottom: 0
        }

        .invoice .invoice-details {
            text-align: right
        }

        .invoice .invoice-details .invoice-id {
            margin-top: 0;
            color: #3989c6
        }

        .invoice main {
            padding-bottom: 50px
        }

        .invoice main .thanks {
            margin-top: -100px;
            font-size: 2em;
            margin-bottom: 50px
        }

        .invoice main .notices {
            padding-left: 6px;
            border-left: 6px solid #3989c6
        }

        .invoice main .notices .notice {
            font-size: 1.2em
        }

        .invoice table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            margin-bottom: 20px
        }

        .invoice table td,.invoice table th {
            padding: 15px;
            background: #eee;
            border-bottom: 1px solid #fff
        }

        .invoice table th {
            white-space: nowrap;
            font-weight: 400;
            font-size: 16px
        }

        .invoice table td h3 {
            margin: 0;
            font-weight: 400;
            color: #3989c6;
            font-size: 1.2em
        }

        .invoice table .qty,.invoice table .total,.invoice table .unit {
            text-align: right;
            font-size: 1.2em
        }

        .invoice table .no {
            color: #fff;
            font-size: 1.6em;
            background: #3989c6
        }

        .invoice table .unit {
            background: #ddd
        }

        .invoice table .total {
            background: #3989c6;
            color: #fff
        }

        .invoice table tbody tr:last-child td {
            border: none
        }

        .invoice table tfoot td {
            background: 0 0;
            border-bottom: none;
            white-space: nowrap;
            text-align: right;
            padding: 10px 20px;
            font-size: 1.2em;
            border-top: 1px solid #aaa
        }

        .invoice table tfoot tr:first-child td {
            border-top: none
        }

        .invoice table tfoot tr:last-child td {
            color: #3989c6;
            font-size: 1.4em;
            border-top: 1px solid #3989c6
        }

        .invoice table tfoot tr td:first-child {
            border: none
        }

        .invoice footer {
            width: 100%;
            text-align: center;
            color: #777;
            border-top: 1px solid #aaa;
            padding: 8px 0
        }

        @media print {
            .invoice {
                font-size: 11px!important;
                overflow: hidden!important
            }

            .invoice footer {
                position: absolute;
                bottom: 10px;
                page-break-after: always
            }

            .invoice>div:last-child {
                page-break-before: always
            }
        }

    </style>
<br/>
<br/>
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

<div id="invoice">

        <div class="toolbar hidden-print">
            <div class="text-center">
                <button id="printInvoice" class="btn btn-info"><i class="fa fa-print"></i> Print</button>
            </div>
            <hr>
        </div>
        <div class="invoice overflow-auto">
            <div style="min-width: 600px">
<c:forEach items="${book.bList}" var="b">
                <main>


                    <div class="row contacts">
                        <div class="col invoice-to">

                            <div class="text-gray-light"><h3>INVOICE TO:&nbsp &nbsp ${b.fname}</h3></div> 
                            <div class="email">${b.departure_airport} -- ${b.arrival_airport}</div>
                            <div class="date">FLIGHT CODE:&nbsp &nbsp ${b.flight_code}</div>
                            <div class="address">RESERVATION:&nbsp &nbsp ${b.airpalne}</div>

                            <div class="date">FLIGHT DATE:&nbsp &nbsp ${b.departing_date}</div>
                            <div class="date">SEAT NO:&nbsp &nbsp ${b.seat_no}</div>
                        </div>
                        <div class="col invoice-details">
                            <h2 class="invoice-id">INVOICE: &nbsp #F${b.id}</h2>
                            <div class="date">Date of Invoice: 05/04/2022</div>
                        </div>
                    </div>


                    <h4 class="text-center">FLIGHT DETAILS</h4>  
                    <div class="row">
                        <div class="col-md-12">

                            <table class="table table-striped table-hover">
                                <tbody>
                              <tr>
                                <th><h5>Flight Code</h5></th>
                                <th><h5>Airplane</h5></th>
                                <th><h5>From</h5></th>
                                <th><h5>To</h5></th>
                                <th><h5>Departure Date</h5></th>
                                <th><h5>Departure time</h5></th>
                                <th><h5>Arrival Date</h5></th>
                                <th><h5>Arrival time</h5></th>
                                <th><h5>Class name</h5></th>
<!--                                 <th><h5>Flight Charge</h5></th> -->
                             </tr>

                                <tr>
                                    <td>${b.flight_code}</td>
                                    <td>${b.airpalne}</td>
                                    <td>${b.departure_airport}</td>
                                    <td>${b.arrival_airport}</td>
                                    <td>${b.departing_date}</td>
                                    <td>${b.departing_time}</td>
                                    <td>${b.arrival_date}</td>
                                    <td>${b.arrival_time}</td>
                                    <td>${b.seat_class}</td>
<%--                                     <td>${b.flight_charge}</td> --%>
                     
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <br>



                    <h4 class="text-center">PASSENGER DETAILS</h4>
                    <div class="row">
                        <div class="col-md-12">

                            <table class="table table-striped table-hover">

                                <tbody>
                                    <tr>

                                <th><h5>First Name</h5></th>
                                <th><h5>Last Name</h5></th>
                          
                                <th><h5>Passport Id </h5></th>
                                <th><h5>Gender</h5></th>
                                <th><h5>Contact</h5></th>
                                <th><h5>Email</h5></th>
                                </tr>


                                <tr>

                                    <td>${b.fname}</td>
                                    <td>${b.lname}</td>
                                    <td>${b.tpassport_no}</td>
                                    <td>${b.gender}</td>
                                    <td>${b.tcontact_no}</td>
                                    <td>${b.temail}</td>
                                   
                                </tr>

                                </tbody>
                            </table>
                        </div>

                    </div>
                    <br>


 <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Total Charge:</div>
                            <div class="h4 font-weight-light">${b.flight_charge}</div>
                        </div>
<!--                         <div class="py-3 px-5 text-right"> -->
<!--                             <div class="mb-2">Number of Site:</div> -->
<%--                             <div class="h2 font-weight-light">${b.flight_charge}</div> --%>
<!--                         </div> -->

<!--                         <div class="py-3 px-5 text-right"> -->
<!--                             <div class="mb-2">Discount</div> -->
<!--                             <div class="h2 font-weight-light">10%</div> -->
<!--                         </div> -->

<!--                         <div class="py-3 px-5 text-right"> -->
<!--                             <div class="mb-2">Sub - Total amount</div> -->
<!--                             <div class="h2 font-weight-light">$32,432</div> -->
<!--                         </div> -->
<!--                     </div> -->

                </main>
                <footer>

                </footer>
                
                </c:forEach>
            </div>                                                    
            <div>                
            </div>
        </div>
    </div>

					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<br/>
<br/>
<%@include file="/WEB-INF/view/common/main_footer.jsp"%>

<script>
$("#invoiceDiv").hide();
$("#btnInvoice").on("click", function(){
	$("#invoiceDiv").show();
})


  $('#printInvoice').click(function () {
            Popup($('.invoice')[0].innerHTML);
            function Popup(data)
            {
                window.print();
                return true;
            }
        });
</script>