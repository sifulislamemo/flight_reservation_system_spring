<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>
 <div class="container-fluid"> 
<div class="col-lg-12">
            <div class="checkout-inner">
                <div class="billing-address">

                    <div class="col-md-12 container">

                        <h2 style="color: #0066cc; font-weight: bold" class="text-center">Please Search your Invoice  </h2>
<form action="/home/book/invoice/search" method="POST">
            <input type="text" name="temail"/>
            <input type="submit" value="Search" class="btn btn-primary"/>
            <br><br/>
                  
            </form>

                    </div>
                </div>

            </div>
        </div>   
    </div>
    
    <div role="tabpanel" class="tab-pane active " id="">
	<div class="col-lg-12">
  <h1 style="text-align:center">Invoice</h1>
<table  class="table table-striped table-hover" >

 <tr>
                <th>Flight Code</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Passport No</th>
                <th>Capacity</th>
                <th>Action</th>
                
               
            </tr>

</table> 
        </div>
</div>


<%@include file="/WEB-INF/view/common/main_footer.jsp"%>