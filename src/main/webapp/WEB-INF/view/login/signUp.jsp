

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>S I TRAVEL</title>

  <!-- Bootstrap CSS -->
  <link href="/resources/vendor/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/login/signUp.css" rel="stylesheet">
 
  

  
</head>

<body >

<div class="wrapper rounded bg-white">
    <div class="h3">Sign Up</div>
    <div class="form">
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>First Name</label> <input type="text" class="form-control" required> </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Last Name</label> <input type="text" class="form-control" required> </div>
        </div>
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Birthday</label> <input type="date" class="form-control" required> </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Gender</label>
                <div class="d-flex align-items-center mt-2"> <label class="option"> <input type="radio" name="radio">Male <span class="checkmark"></span> </label> <label class="option ms-4"> <input type="radio" name="radio">Female <span class="checkmark"></span> </label> </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Email</label> <input type="email" class="form-control" required> </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Phone Number</label> <input type="tel" class="form-control" required> </div>
        </div>
       
        <div class="btn btn-primary mt-3">Submit</div>
        <div class="card-footer">
				<div class="d-flex justify-content-center links">Plase login your account here? 
					<a href="/login">Login</a>
				</div>
				
			</div>
    </div>
</div>
<script src="/resources/vendor/js/bootstrap.js"></script>
</body>

</html>

