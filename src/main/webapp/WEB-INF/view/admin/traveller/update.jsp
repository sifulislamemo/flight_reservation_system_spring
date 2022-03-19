<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active container" id="flights">
    <div class="col-lg-12">
        <section class="panel color2">
            <header class="panel-heading text-center">
                <h1> Update Traveller</h1>
            </header>
            <div class="panel-body">
                <form method="post" action="/admin/traveller/update">
                    <div class="form-group">
                        <label for="name">First Name:</label>
                        <input type="text" class="form-control"value="${t.first_name}" id="name" placeholder="Enter First Name" name="first_name">
                    </div>
                    <div class="form-group">
                        <label for="last_name">Last Name:</label>
                        <input type="text" class="form-control"value="${t.last_name}" id="last_name" placeholder="Enter Last Name" name="last_name">
                    </div>
                    <div class="form-group">
                        <label for="nid">NID:</label>
                        <input type="text" class="form-control"value="${t.NID}" id="NID" placeholder="Enter NID" name="NID">
                    </div>
                    <div class="form-group">
                        <label for="passport_no">Passport No:</label>
                        <input type="text" class="form-control"value="${t.passport_id}" id="passport_no" placeholder="Enter Passport No" name="passport_id">
                    </div>

                    <div class="form-group">
                        <label for="other">Gender :</label>
                        <input type="radio" id="male" name="gender" value="${t.gender}">
                        <label for="male">Male :</label>

                        <input type="radio" id="female" name="gender" value="${t.gender}">
                        <label for="female">Female :</label>

                        <input type="radio" id="other" name="gender" value="${t.gender}">
                        <label for="other">Other :</label>

                    </div>


                    <div class="form-group">
                        <label for="area">Contact:</label>
                        <input type="text" class="form-control"value="${t.contact}" id="contact" placeholder="Enter Contact" name="contact">
                    </div>

                    <div class="form-group">
                        <label for="area">Email:</label>
                        <input type="text" class="form-control"value="${t.email}" id="email" placeholder="Enter Email" name="email">
                    </div>


                    <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-primary">Update</button>
        
        </div>
    </div>

                </form>
            </div>
        </section>

    </div>       
</div> 

  <%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>