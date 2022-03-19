<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>
<div role="tabpanel" class="tab-pane active " id="">
	<div class="col-lg-12">
  <h1 style="text-align:center">Traveller List</h1>
<table  class="table table-striped table-hover" >
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>NID</th>
                <th>Passport Id</th>
                <th>Gender</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Action</th>
                
               
            </tr>
            <c:forEach items="${traveller}" var="t">
                <tr>
                    <td>${t.first_name}</td>
                    <td>${t.last_name}</td>
                    <td>${t.NID}</td>
                    <td>${t.passport_id}</td>
                    <td>${t.gender}</td>
                    <td>${t.contact}</td>
                    <td>${t.email}</td>
                    <td>
                        <a class="btn btn-primary" href="/admin/traveller/update/${t.id}">Edit</a> &nbsp; &nbsp;
                   
                        <a class="btn btn-danger" href="/admin/traveller/delete/${t.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
             
        </table> 
        </div>
</div>

<!-- <table id="tblShow"> -->
<!-- 	<thead> -->
<!-- 	</thead> -->
<!-- 	<tbody> -->
<!-- 	</tbody> -->
<!-- </table> -->

  <%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>
  
  <script>
  $("#btnShow").on("click", function(e) {
		/*      $.ajax({
			 type: "GET",
			 url: "/product/view",
			 success: function(data, status){
			 console.log("Data: " + data + "\nStatus: " + status);
			 console.log(data.length);
			 }
			 });  */
			
			 $.get("/admin/traveller/view", function(data, status) {
				console.log("Data: " + data + "\nStatus: " + status);
				console.log(data.length);
				$("#tblShow tbody").html("");
				$("#tblShow thead").html("");
				var html = "";
				var htmlHeader = "";
				htmlHeader += "<tr>";
				htmlHeader += "<th>First Name</th>";
				htmlHeader += "<th>Last Name</th>";
				htmlHeader += "<th>NID</th>";
				htmlHeader += "<th>Passport Id</th>";
				htmlHeader += "<th>Gender</th>";
				htmlHeader += "<th>Contact</th>";
				htmlHeader += "<th>Email</th>";
				htmlHeader += "<th>Action</th>";
				htmlHeader += "</tr>";

				for (i = 0; i < data.length; i++) {
					html += "<tr>";
					html += "<td>" + data[i].first_name + "</td>";
					html += "<td>" + data[i].last_name + "</td>";
					html += "<td>" + data[i].NID + "</td>";
					html += "<td>" + data[i].passport_id + "</td>";
					html += "<td>" + data[i].gender + "</td>";
					html += "<td>" + data[i].contact + "</td>";
					html += "<td>" + data[i].email + "</td>";
					html += "<td><button class='btn btn-primary'><a href='/admin/traveller/update/"+data[i].id+"'>Edit</a></button><button class='btn btn-danger'><a href='/admin/traveller/delete/"+data[i].id+"'>Delete</a></button></td>";
					html += "</tr>";
				}
				$("#tblShow thead").html(htmlHeader);
				$("#tblShow tbody").html(html);
				$('#tblShow').DataTable({
					"paging" : true,
					"ordering" : true,
					"info" : true
				});
			});

		});
  
  </script>