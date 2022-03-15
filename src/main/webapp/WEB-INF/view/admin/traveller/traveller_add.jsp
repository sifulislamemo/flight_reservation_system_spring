<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%> 

<div role="tabpanel" class="tab-pane active container" id="flights">
    <div class="col-lg-12">
        <section class="panel color2">
            <header class="panel-heading text-center">
                <h1> Add Traveller</h1>
            </header>
            <div class="panel-body">
                <form method="post" action="/passenger/save">
                    <div class="form-group">
                        <label for="name">First Name:</label>
                        <input type="text" class="form-control" id="airplane_name" placeholder="Enter First Name" name="first_name">
                    </div>
                    <div class="form-group">
                        <label for="last_name">Last Name:</label>
                        <input type="text" class="form-control" id="last_name" placeholder="Enter Last Name" name="last_name">
                    </div>
                    <div class="form-group">
                        <label for="nid">NID:</label>
                        <input type="text" class="form-control" id="NID" placeholder="Enter NID" name="NID">
                    </div>
                    <div class="form-group">
                        <label for="passport_no">Passport No:</label>
                        <input type="text" class="form-control" id="passport_no" placeholder="Enter Passport No" name="passport_no">
                    </div>

                    <div class="form-group">
                        <label for="other">Gender :</label>
                        <input type="radio" id="male" name="gender" value="male">
                        <label for="male">Male :</label>

                        <input type="radio" id="female" name="gender" value="female">
                        <label for="female">Female :</label>

                        <input type="radio" id="other" name="gender" value="other">
                        <label for="other">Other :</label>

                    </div>


                    <div class="form-group">
                        <label for="area">Contact:</label>
                        <input type="text" class="form-control" id="contact" placeholder="Enter Contact" name="contact">
                    </div>

                    <div class="form-group">
                        <label for="area">Email:</label>
                        <input type="text" class="form-control" id="email" placeholder="Enter Email" name="email">
                    </div>


                    <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-primary">Submit</button>
        
        </div>
    </div>

                </form>
            </div>
        </section>

    </div>       
</div> 

 <%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>