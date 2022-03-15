<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active container" id="flights">
          <div class="col-lg-12">
            <section class="panel color2">
              <header class="panel-heading text-center">
               <h1> Add Airplane</h1>
              </header>

    
                <div class="panel-body">
               
            <form method="post" action="/airplane/save">
                <div class="form-group">
                    <label for="name">Airplane Name:</label>
                    <input type="text" class="form-control" id="airplane_name" placeholder="Enter Name" name="airplane_name">
                </div>
                <div class="form-group">
                    <label for="salary">Owner:</label>
                    <input type="text" class="form-control" id="owner" placeholder="Enter owner" name="owner">
                </div>
                <div class="form-group">
                    <label for="nid">Model:</label>
                    <input type="text" class="form-control" id="model" placeholder="Enter model" name="model">
                </div>
                <div class="form-group">
                    <label for="area">Engine:</label>
                    <input type="text" class="form-control" id="engeen" placeholder="Enter engeen" name="engeen">
                </div>

                <div class="form-group">
                    <label for="city">Capacity:</label>
                    <input type="number" class="form-control" id="capacity" placeholder="Enter capacity" name="capacity">
                </div>
                <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-primary">Submit</button>
        
        </div>
    </div>
                 

            </form>
                    </section>
                    </div>
             </div>   

  <%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>