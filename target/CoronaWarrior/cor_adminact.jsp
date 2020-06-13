<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

   
   	       String Password=request.getParameter("password");
           String username=request.getParameter("username");
                
                   
           try {
                
                Connection connection = DbConnection.getconnection();
                        
				String sql="SELECT * FROM admin where username='"+username+"' and password='"+Password+"'";
				Statement stmt = connection.createStatement();
				ResultSet rs =stmt.executeQuery(sql);
			
				if(rs.next())
				{
	                       session.setAttribute("username1",username);
	                       session.setAttribute("location1",rs.getString("location"));
	                       
				response.sendRedirect("AdminHome.jsp?m1=success&m2=n");
				
				
				}
				else
				{
				
	                         response.sendRedirect("logina.jsp?m2=Failed&m1=n");   
	                            
				}

           }  
	       catch(Exception e)
	       {
			out.print(e.getMessage());
		   }  

                        
                        
%>