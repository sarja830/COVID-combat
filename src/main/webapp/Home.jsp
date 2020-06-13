<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>HOME</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<!--  navbar -->
	<jsp:include page="navbar.jsp"></jsp:include>
	
<div class="limiter">
	 <div class="container-login100"> 
		 <form class="form-horizontal" style="background-color:orange; width=100%; padding-left=20px; "  action="save.jsp" method="post"> 
			
		
			  <span class="login100-form-title" id="hometitle">
						REPORT ISSUE
			  </span>
			  <div class="form-row">
			    <div class="form-group col-md-6 validate-input">
			      <label for="suspectsno">Number of suspects</label>
			      <input type="number" min="1" class="form-control input100" required id="suspectsno" required name="suspects_no" placeholder="suspects no">
			    </div>
			    <div class="form-group col-md-6">
			      <label for="name">Name of suspect</label>
			      <input type="text" class="form-control" id="name" required name="suspect_name" placeholder="name of susupect">
			    </div>
			  </div>
			  <div class="form-group wrap-input100 validate-input" data-validate = "Valid address is required">
			    <label for="inputAddress">Location of suspect</label>
			    <input type="text" class="form-control" id="inputAddress" required placeholder="location"  name="suspected_location" >
			    
			  </div>
			  <div class="form-group">
			    <label for="travelhistory">Travel History</label>
			    <textarea  class="form-control" id="travelhistory"  required name="travelhistory" placeholder="Travel history of suspect if any"></textarea>
			  </div>
			 
			    <div class="form-group" >
			      <label for="relation">Relationship with suspect</label>
			      <input type="text" class="form-control" id="relation" required name="relation" placeholder="relation with suspect">
			    </div>

			  <div class="form-group">
			    <label for="reason">Possible cause of infection</label>
			    <textarea  class="form-control" id="reason" name="reason" required placeholder="Reason for his infection as you feel"></textarea>
			  </div>
			  <div class="form-group">
			    <label for="comments">Any additional comments</label>
			    <textarea  class="form-control" id="comments" name="comments" required placeholder="Comments and suggestions welcomed"></textarea>
			  </div>
	<!-- 		  
			  <div class="form-row">
			    <div class="form-group col-md-6">
			      <label for="inputCity">City</label>
			      <input type="text" class="form-control" id="inputCity">
			      	
			    </div>
			    <div class="form-group col-md-4">
			      <label for="inputState">State</label>
			      <select id="inputState" class="form-control">
			        <option selected>Choose...</option>
			        <option>...</option>
			      </select>
			    </div>
			    <div class="form-group col-md-2">
			      <label for="inputZip">Zip</label>
			      <input type="text" class="form-control" id="inputZip">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="form-check">
			      <input class="form-check-input" type="checkbox" id="gridCheck">
			      <label class="form-check-label" for="gridCheck">
			        Check me out
			      </label>
			    </div>
			  </div>
 -->			  
			  <button type="submit" style="margin:auto; display:block;" class="btn btn-success">Submit</button>
			</form> 
	  		  
		
	</div>
	</div>

















	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>





</body>
</html>