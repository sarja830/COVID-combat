
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V1</title>
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
 

 <%
if(request.getParameter("m1").equals("success")){%>
    
<script>
alert('Registration Sucess!')</script>

<%}
if(request.getParameter("m2").equals("Failed")){%>

<script>alert('Registration Failed..!')</script>
 <%
}
%> 

<%
if(request.getParameter("m2").equals("FailedR")){%>

<script>alert('Registration Failed..! Username Already taken')</script>
 <%
}
%> 

<body>
	<!--  navbar -->
	<!--  navbar -->
	<jsp:include page="navbar.jsp"></jsp:include>
	
	
	
	
	
	
	
	
	
	
	<div class="limiter">
	<div class="container-login100"> 
			
		 		<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img-01.jpeg" alt="IMG">
				</div>
         	<form class="login100-form validate-form" action="cor_customerregact.jsp" method="post">
					<span class="login100-form-title">
						WARRIOR REGISTRATION
					</span>
					<div class="wrap-input100 validate-input" >
						<input class="input100" type="text" name="fullname" placeholder="FULL NAME">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user-circle" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" >
						<input class="input100" type="text" name="username" placeholder="USER NAME">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-address-card" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid phone is required">
						<input class="input100" type="text" placeholder="Contact No" name="cnumber" pattern="[789][0-9]{9}" title="Indian Number Only(Max 10 Digit)">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-address-book" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Valid address is required">
						<input class="input100" type="text" name="address" placeholder="LOCATION">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
						</span>
					</div>
					

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							REGISTER
						</button>
					</div>
<!--  
					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					
-->
					
				</form>
<!--				
				<div class="text-center p-t-136">
						<a class="txt2" href="cor_customerreg.jsp">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
-->					
			</div>
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