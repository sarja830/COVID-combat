 <!DOCTYPE html>
<%@page import="Database.DbConnection"%>
<html>
<head>
    <title>Jsp Sample</title>
  
</head>
<body bgcolor=yellow>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!--  navbar -->
	<jsp:include page="navbar.jsp"></jsp:include>
	
    <%
    try
    {   
    	String location = (String)session.getAttribute("location1");
        String query="select * from customer where suspected_location like '%"+location+"%'" ;
       
        Connection connection=DbConnection.getconnection();
       PreparedStatement pst =connection.prepareStatement(query);
        ResultSet rs=pst.executeQuery(query);
    %>
    <table border=1 align=center style="text-align:center">
      <thead>
          <tr>
             
             <th>fullname</th>
        <!--      <th>username</th>    
             <th>password</th>   -->
             <th>email</th>
        <!--     <th>location</th> --> 
             <th>cnumber</th>
             <th>suspects_no</th>
             <th>suspect_name</th>
             <th>suspected_location</th>
             <th>travelhistory</th>
             <th>date</th>
             <th>realtion</th>
             <th>comments</th>
                 
          </tr>
      </thead>
      <br>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                
                <td><%=rs.getString("fullname") %></td>
          <!--       <td><%=rs.getString("username") %></td>
                <td><%=rs.getString("password") %></td>  -->
                <td><%=rs.getString("email") %></td>
               
           <!--      <td><%=rs.getString("location") %></td>   -->
                <td><%=rs.getString("cnumber") %></td>
                <td><%=rs.getString("suspects_no") %></td>
                <td><%=rs.getString("suspect_name") %></td>
                <td><%=rs.getString("suspected_location") %></td>
                <td><%=rs.getString("travelhistory") %></td>
                <td><%=rs.getString("rdate") %></td>
                <td><%=rs.getString("relation") %></td>
                <td><%=rs.getString("comments") %></td>
                
            </tr>
           
            <%}%>
           </tbody>
            <br>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
   
    %>
</body>
</html>