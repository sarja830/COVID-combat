<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
            String fullname = request.getParameter("fullname");
            String username = request.getParameter("username");
            String password = request.getParameter("password");                      
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String cnumber = request.getParameter("cnumber");
               
            				
            try {
						
							
            Connection connection = DbConnection.getconnection();
          
            
            
            PreparedStatement ps=connection.prepareStatement("insert into customer(fullname,username,password,email,location,cnumber)  values(?,?,?,?,?,?)");
            ps.setString(1,fullname);
            ps.setString(2,username);
            ps.setString(3,password);            
            ps.setString(4,email);
            ps.setString(5,address);	
            ps.setString(6,cnumber);
                       
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("loginc.jsp?m1=success&m2=n");

            }
             else
            {

                response.sendRedirect("cor_customerreg.jsp?m2=Failed&m1=n");   

            }  
    
              }
             catch (Exception e) 
             {
            	 response.sendRedirect("cor_customerreg.jsp?m2=FailedR&m1=n");
             }
            %>
          