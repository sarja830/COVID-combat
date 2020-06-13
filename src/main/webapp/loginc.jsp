
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
<!-- 	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">  -->
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

<script>alert('Login Failed..!')</script>
 <%
}
%> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%--
<%
	Cookie[] arr = request.getCookies();
	String name="",password="";
    if(arr!=null)
    {
    	for(int i=0;i<arr.length;i++)
    	{
    		
  
    		
    		if(arr[i].getName().equals("username"))
    		{
    			 name=(String)arr[i].getValue();
    			 out.print(name);
    		}
    		if(arr[i].getName().equals("password")){
    			password=(String)arr[i].getValue();
    			out.print(password);
    		}	
    	}	out.println(name+" name ");
                try 
                {  out.print("no error in database connection ");
	                Connection connection = DbConnection.getconnection();
	                String sql="SELECT * FROM customer where username='"+name+"' and password='"+password+"'";
	    			Statement stmt = connection.createStatement();
	    			ResultSet rs =stmt.executeQuery(sql);
	    			out.print(rs.next());
	    			
	    			if(rs.next())
	    			{
				    
				
				    	response.sendRedirect("Home.jsp?m1=success");
				    }
			     }
                catch (Exception e) 
                {
                   
                   out.print("error in database connection "+e);
                }
    		}
    	 
%>
 --%>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
	
	
	
	
	
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/couchfriends.jpg" alt="IMG">
				</div>

				<form class="login100-form validate-form" action="cor_customeract.jsp" method="post">
					<span class="login100-form-title">
						Corona Warrior Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="username" placeholder="username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-address-card" aria-hidden="true"></i>
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
							Login
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
					</div>
-->
					
				</form>
				<div class="text-center p-t-136">
						<a class="txt2" href="cor_customerreg.jsp?m1=n&m2=n">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
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
<!-- 	<script src="js/main.js"></script>  -->

</body>
</html>