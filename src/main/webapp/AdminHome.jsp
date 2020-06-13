<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    try
    {   
    	String location = (String)session.getAttribute("location1");
        String query="select * from customer where suspected_location like '%" + location + "%'" ;
       
        Connection connection=DbConnection.getconnection();
        PreparedStatement pst =connection.prepareStatement(query);
        ResultSet rs=pst.executeQuery(query);
   %>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Table V01</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css1/util.css">
	<link rel="stylesheet" type="text/css" href="css1/main.css">
<!--===============================================================================================-->
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	
	
	
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
				<form action="index.jsp">
					<table>
						<thead>
							<tr class="table100-head">
					<!-- 		 <th>seen</th>     -->	
								 <th class="column1">fullname</th>
					         <!--     <th class="column2">username</th>
					             <th class="column3">password</th>  -->
					             <th class="column2">email</th>
					          <!--    <th class="column1">location</th>  -->
					             <th class="column2">cnumber</th>
					             <th class="column2">suspects_no</th>
					             <th class="column2">suspect_name</th>
					             <th class="column1">suspected_location</th>
					             <th class="column1">travelhistory</th>
					             <th class="column2">	rdate</th>
					             <th class="column1"> realtion </th>
					              <th class="column1"> comments </th>
							</tr>
						</thead>
						<tbody>
						
						
													
													
													
													<tbody>
							        <%while(rs.next())
							        {
							            %>
							            <tr>
							         <!--   	<td><input style="transform: scale(2.0); padding:auto" type="checkbox"></td>   --> 
							                <td class="column1"><%=rs.getString("fullname") %></td>
							               <!--   <td class="column2"><%=rs.getString("username") %></td> 
							                <td class="column3"><%=rs.getString("password") %></td>  -->
							                <td class="column2"><%=rs.getString("email") %></td>							               
							             <!--     <td class="column1"><%=rs.getString("location") %></td> -->
							                <td class="column2"><%=rs.getString("cnumber") %></td>
							                <td class="column2"><%=rs.getString("suspects_no") %></td>
							                <td class="column2"><%=rs.getString("suspect_name") %></td>
							                <td class="column1"><%=rs.getString("suspected_location") %></td>
							                <td class="column1"><%=rs.getString("travelhistory") %></td>
							                <td class="column2" ><%=rs.getString("rdate") %></td>
							                <td class="column1"><%=rs.getString("relation") %></td>
							                <td class="column1"><%=rs.getString("comments") %></td>
							                
							            </tr>
							            <%}%>
							           </tbody>
							        </table><br>
							    <%}
							    catch(Exception e){
							        out.print(e.getMessage());%><br><%
							    }
							   
							    %>
							  <!--    <input type="submit" value="submit">  -->
				
					</form>
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
	<script src="js1/main.js"></script>

</body>
</html>