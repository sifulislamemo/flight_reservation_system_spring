<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>
<br/>
<br/>
<div class="container">
     <!-- Credit Card Payment Form - START -->
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-6 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <h3 class="text-center">Payment Details</h3>
                            <div class="inlineimage"> <img class="img-responsive images" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Mastercard-Curved.png"> <img class="img-responsive images" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Discover-Curved.png"> <img class="img-responsive images" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Paypal-Curved.png"> <img class="img-responsive images" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/American-Express-Curved.png"> </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="form-group"> <label>CARD NUMBER</label>
                                        <div class="input-group"> <input type="tel" class="form-control" placeholder="Valid Card Number" /> <span class="input-group-addon"><span class="fa fa-credit-card"></span></span> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-7 col-md-7">
                                    <div class="form-group"> <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label> <input type="tel" class="form-control" placeholder="MM / YY" /> </div>
                                </div>
                                <div class="col-xs-5 col-md-5 pull-right">
                                    <div class="form-group"> <label>CV CODE</label> <input type="tel" class="form-control" placeholder="CVC" /> </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="form-group"> <label>CARD OWNER</label> <input type="text" class="form-control" placeholder="Card Owner Name" /> </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col-xs-12"> <a href="/home/invoice" class="btn btn-success btn-lg btn-block">Confirm Payment</a> </div>
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
         
        
         